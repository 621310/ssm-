package cn.lyl.ssmqxdemo.tools;

/**
 * AES 128bit 鍔犲瘑瑙ｅ瘑宸ュ叿绫�
 * @author dufy
 */

import org.apache.commons.codec.binary.Base64;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;


public class AesEncryptUtil {
	
	
	
	
	/**
	 * 鍔犲瘑鏂规硶
	 * @param data  瑕佸姞瀵嗙殑鏁版嵁
	 * @param key 鍔犲瘑key
	 * @param iv 鍔犲瘑iv
	 * @return 鍔犲瘑鐨勭粨鏋�
	 * @throws Exception
	 */
	public static String encrypt(String data, String key, String iv) throws Exception {
		try {

			Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");//"绠楁硶/妯″紡/琛ョ爜鏂瑰紡"
			int blockSize = cipher.getBlockSize();

			byte[] dataBytes = data.getBytes();
			int plaintextLength = dataBytes.length;
			if (plaintextLength % blockSize != 0) {
				plaintextLength = plaintextLength + (blockSize - (plaintextLength % blockSize));
			}

			byte[] plaintext = new byte[plaintextLength];
			System.arraycopy(dataBytes, 0, plaintext, 0, dataBytes.length);

			SecretKeySpec keyspec = new SecretKeySpec(key.getBytes(), "AES");
			IvParameterSpec ivspec = new IvParameterSpec(iv.getBytes());

			cipher.init(Cipher.ENCRYPT_MODE, keyspec, ivspec);
			byte[] encrypted = cipher.doFinal(plaintext);

			return new Base64().encodeToString(encrypted);

		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 瑙ｅ瘑鏂规硶
	 * @param data 瑕佽В瀵嗙殑鏁版嵁
	 * @param key  瑙ｅ瘑key
	 * @param iv 瑙ｅ瘑iv
	 * @return 瑙ｅ瘑鐨勭粨鏋�
	 * @throws Exception
	 */
	public static String desEncrypt(String data, String key, String iv) throws Exception {
		try {
			byte[] encrypted1 = new Base64().decode(data);

			Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
			SecretKeySpec keyspec = new SecretKeySpec(key.getBytes(), "AES");
			IvParameterSpec ivspec = new IvParameterSpec(iv.getBytes());

			cipher.init(Cipher.DECRYPT_MODE, keyspec, ivspec);

			byte[] original = cipher.doFinal(encrypted1);
			String originalString = new String(original);
			return originalString;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	
	
	/**
	* 娴嬭瘯
	*/
	public static void main(String args[]) throws Exception {

		String test = "18729990110";

		String data = null;
		String key = "dufy20170329java";
		String iv = "dufy20170329java";

		data = encrypt(test, key, iv);

		System.out.println(data);
		System.out.println(desEncrypt(data, key, iv));
	}
	
}