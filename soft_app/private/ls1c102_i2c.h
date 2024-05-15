#ifndef INCLUDE_I2C_H_
#define INCLUDE_I2C_H_
//#include "ls1c101.h"
#include"test.h"
//#include"ls1c102_regapi.h"
//#include"stdint.h"
#include"ls1x.h"
/**
 * @閻犲洤鐡ㄥΣ鎴︽晬濞嗭拷2C闁规亽鍎辫ぐ娑氣偓鐟扮箰閻ｇ偓绋婇敓锟�
 *
 */
typedef struct
{
  volatile uint8_t PRERL;			/* 闁告帒妫濋。鍫曞磹闂傚绉甸悗娑欘殙婵☆厾鈧潧瀚悺銊╁闯閿燂拷 */
  volatile uint8_t PRERH;			/* 闁告帒妫濋。鍫曞磹婵傚摜褰悗娑欘殙婵☆厾鈧潧瀚悺銊╁闯閿燂拷 */
  volatile uint8_t CTRL;				/* 闁硅矇鍐ㄧ厬閻庨潧瀚悺銊╁闯閿燂拷 */
  volatile uint8_t DR;				/* 闁轰胶澧楀畵浣衡偓闈涘閻°劑宕抽敓锟� */
  volatile uint8_t CR_SR;			/* 闁告稒鍨濋幎銈団偓闈涘閻°劑宕抽敓锟� 闁稿骏鎷� 闁绘ǹ鍩栭埀顑跨閻﹀海鈧稒锚濞咃拷 */
  volatile uint8_t BLTOP;			/* 闁诡剝宕甸崵搴☆潰婵犳碍鏁氶柡鍐ㄧ埣濡法鈧潧瀚悺銊╁闯閿燂拷 */
  volatile uint8_t RESERVED0;			/* 濞ｅ洦绻勯弳鈧悗娑欘殙婵★拷  */
  volatile uint8_t SADDR;			/* 濞寸姴瀛╄啯鐎殿喖绻愬﹢鎾锤閳ь剛鈧潧瀚悺銊╁闯閿燂拷 */
} I2C_TypeDef;

#define I2C                 ((I2C_TypeDef *) I2C_BASE)

typedef struct
{
	uint32_t I2C_ClockSpeed;          /*!< Specifies the clock frequency.
                                         This parameter must be set to a value lower than 400kHz */

	uint8_t I2C_Mode;                /*!< Specifies the I2C mode.
                                         This parameter can be a value of @ref I2C_mode */

	uint8_t I2C_OwnAddress1;         /*!< Specifies the first device own address.
                                         This parameter can be a 7-bit or 10-bit address. */

	uint8_t I2C_BuslockCheckEn;    	 /*!< Set the I2C buslock check function*/


	uint8_t I2C_SlvAutoresetEn;		 /*!< Set the I2C autoreset check function*/

}I2C_InitTypeDef;

#define IS_I2C_ALL_PERIPH(PERIPH) ((PERIPH) == I2C)

#define IS_I2C_CLEAR_FLAG(FLAG) (((FLAG) & 0x01) == 0x01)
/** @defgroup I2C_mode
  * @{
  */
#define IS_I2C_CLOCK_SPEED(SPEED) (((SPEED) >= 0x1) && ((SPEED) <= 400000))

#define IS_I2C_OWN_ADDRESS1(ADDRESS1) ((ADDRESS1) <= 0x3FF)


#define I2C_Mode_Slave          ((uint8_t)0x00)
#define I2C_Mode_Master            ((uint8_t)0x20)

#define IS_I2C_MODE(MODE) (((MODE) == I2C_Mode_Slave) || \
                           ((MODE) == I2C_Mode_Master))
/**
  * @}
  */



#define I2C_Buslock_Check_Enable                  ((uint8_t)0x02)
#define I2C_Buslock_Check_Disable                 ((uint8_t)0x00)
#define IS_I2C_BUSLOCK_CHECK_EN(STATE) (((STATE) == I2C_Buslock_Check_Enable) || \
                                 ((STATE) == I2C_Buslock_Check_Disable))



#define I2C_Slv_Autoreset_Enable                  ((uint8_t)0x01)
#define I2C_Slv_Autoreset_Disable                 ((uint8_t)0x00)
#define IS_I2C_SLV_AUTORESET_EN(STATE) (((STATE) == I2C_Slv_Autoreset_Enable) || \
                                 ((STATE) == I2C_Slv_Autoreset_Disable))


/** @defgroup I2C_transfer_direction
  * @{
  */

#define  I2C_Direction_Transmitter      ((uint8_t)0x00)
#define  I2C_Direction_Receiver         ((uint8_t)0x01)
#define IS_I2C_DIRECTION(DIRECTION) (((DIRECTION) == I2C_Direction_Transmitter) || \
                                     ((DIRECTION) == I2C_Direction_Receiver))

#define  I2C_ACK      					((uint8_t)0x00)
#define  I2C_NACK         				((uint8_t)0x08)
#define IS_I2C_ACK(ACK) 	(((ACK) == I2C_ACK) ||  ((DIRECTION) == I2C_NACK))


#define  I2C_STOP      					((uint8_t)0x40)
#define  I2C_NSTOP         				((uint8_t)0x00)
#define IS_I2C_STOP(STOP) 	(((STOP) == I2C_STOP) ||  ((DIRECTION) == I2C_NSTOP))



/**
 *@鐠囨挳鏁撻弬銈嗗闁跨喐鏋婚幏锟�  I2C_STATE_Flags
 */
#define I2C_STATE_RxACK                     ((uint8_t)0x80)  /* 闁衡偓鐠哄搫鐓傞柣銊ュ缁ㄨ尙绮甸弬鍓хТ闁挎冻鎷� 0閻炴稏鍔庨妵姘跺绩鐠哄搫鐓傞幖瀛樻⒒閻＄喖鏁嶉敓锟�1閻炴稏鍔庨妵姘跺绩鐠哄搫鐓侼ACK */
#define I2C_STATE_BUSY                      ((uint8_t)0x40)  /* 闁诡剝宕甸崵搴ょ疀濞嗘劗鍨奸煫鍥锋嫹  */
#define I2C_STATE_AL                        ((uint8_t)0x20)  /* 濠㈣泛宕獮鎾寸閼奸姊块柨娑虫嫹1閻炴稏鍔庨妵姘▔閺勫浚鍟庡璺烘搐閵囨垿宕㈢紒妯峰亾閼姐倕娈犻柟璨夊啫鐓戦柡澶涙嫹  */
#define I2C_STATE_Slave_Addressed           ((uint8_t)0x10)  /* 閻炴凹鍋勯浼村锤閳ь剟鏁嶉敓锟�1閻炴稏鍔庨妵姘媴濠娾偓鐠愮喐绂掓惔銈庡晭濠㈣泛娲﹀鍌氼啅閼奸娼堕悗浣冾嚙濞煎啴骞嬮幇顒€顫�  */
#define I2C_STATE_Slave_Rw                  ((uint8_t)0x08)  /* 濞寸姴姘﹂鏇熷緞閸ヮ亶鍤㈤柛鎰懕缁憋拷0閻炴稏鍔庨妵姘辨偖椤愩儺鍤� 闁挎冻鎷�1閻炴稏鍔庨妵姘辨偖椤愩垹鏅� */
#define I2C_STATE_Buslock                   ((uint8_t)0x04)  /* 闁诡剝宕甸崵搴☆潰婵犳碍鏁氶柨娑虫嫹1閻炴稏鍔庨妵姘跺箑閼姐倕娈犻柛鎴ｆ楠炲洤顫㈡繝姘暁 */
#define I2C_STATE_TIP                       ((uint8_t)0x02)  /* 濞磋偐濮剧欢顓熸交濞戞粠鏀介柨娑虫嫹1閻炴稏鍔庨妵姘▔閺勫浚鍟庡璺烘处濠€渚€寮崼顒傜婵繐绲藉﹢顏呭閻樿櫣缈� */
#define I2C_STATE_IF                        ((uint8_t)0x01)  /* 濞戞搩鍘介弻鍥冀閸パ呯濞达絽绋勭槐锟� 1閻炴稏鍔庨妵姘閻樿櫣缈婚悗鐟板缁斿瓨绋夐鍕憻闁煎搫鍊归崹銊︾▔閺勫浚鍟庡璺烘搐閵囨垿宕㈢拋鍐茬筏閻熶緤鎷� */
/** @defgroup I2C_registers
  * @{
  */
#define IS_I2C_GET_STATUS(I2C_STATUS)  (((I2C_STATUS) == I2C_STATE_RxACK)||\
										((I2C_STATUS) == I2C_STATE_BUSY)||\
										((I2C_STATUS) == I2C_STATE_AL)||\
										((I2C_STATUS) == I2C_STATE_Slave_Addressed)||\
										((I2C_STATUS) == I2C_STATE_Slave_Rw)||\
										((I2C_STATUS) == I2C_STATE_Buslock)||\
										((I2C_STATUS) == I2C_STATE_TIP)||\
										((I2C_STATUS) == I2C_STATE_IF)||\


#define I2C_Register_PRERL				((uint8_t)0x00)
#define I2C_Register_PRERH				((uint8_t)0x01)
#define I2C_Register_CTR				((uint8_t)0x02)
#define I2C_Register_DR					((uint8_t)0x03)
#define I2C_Register_SR					((uint8_t)0x04)
#define I2C_Register_BLTOP				((uint8_t)0x05)
#define I2C_Register_SADDR				((uint8_t)0x07)

#define IS_I2C_REGISTER(REGISTER) (((REGISTER) == I2C_Register_PRERL) || \
                                   ((REGISTER) == I2C_Register_PRERH) || \
                                   ((REGISTER) == I2C_Register_CTR) || \
                                   ((REGISTER) == I2C_Register_DR) || \
                                   ((REGISTER) == I2C_Register_SR) || \
                                   ((REGISTER) == I2C_Register_BLTOP) || \
                                   ((REGISTER) == I2C_Register_BLTOP))


#define IRQ_I2C         				((uint8_t)0x02)


//
//#define I2C_RXACK			((uint8_t)0x00)
//#define I2C_BUSY			((uint8_t)0x01)
//#define I2C_AL				((uint8_t)0x02)
//#define I2C_SLV_ADDR		((uint8_t)0x03)
//#define I2C_SLV_RW			((uint8_t)0x04)
//#define I2C_BUS_LOCK		((uint8_t)0x05)
//#define I2C_TIP				((uint8_t)0x07)
//#define I2C_IF				((uint8_t)0x07)

//IS_I2C_CLEAR_FLAG(FLAG)		((FLAG) == )

void I2C_Init(I2C_TypeDef* I2Cx, I2C_InitTypeDef* I2C_InitStruct);
void I2C_StructInit(I2C_InitTypeDef* I2C_InitStruct);
void I2C_GenerateSTART(I2C_TypeDef* I2Cx, FunctionalState NewState);	//I2C濞戞挻妲掗鏇熷緞閸ワ箓鐛撻柣銏㈠妼tart濞ｅ洠鈧啿濞�
void I2C_GenerateSTOP(I2C_TypeDef* I2Cx, FunctionalState NewState);		//I2C濞戞挻妲掗鏇熷緞閸ワ箓鐛撻柣銏㈠妼top濞ｅ洠鈧啿濞�
void I2C_AcknowledgeConfig(I2C_TypeDef* I2Cx, FunctionalState NewState);//I2C濞戞挻妲掗鏇熷緞閸ワ箓鐛撻柣銏㈠壃ck濞ｅ洠鈧啿濞�
void I2C_ITConfig(I2C_TypeDef* I2Cx, FunctionalState NewState);			//I2C濞戞搩鍘介弻鍥╂媼閸撗呮瀭
void I2C_ITCmd(I2C_TypeDef* I2Cx, FunctionalState NewState);			//I2C濞戞搩鍘介弻鍥ь嚕閳ь剟宕ラ敓锟�
void I2C_SendData(I2C_TypeDef* I2Cx, uint8_t Data);						//I2C闁告瑦鍨块埀顑跨劍閺嗙喖骞戦敓锟�
void I2C_ReceiveData(I2C_TypeDef* I2Cx, FunctionalState ACK, FunctionalState STOP);		//I2C闁规亽鍎查弫褰掑极閻楀牆绁�
void I2C_Send7bitAddress(I2C_TypeDef* I2Cx, uint8_t Address, uint8_t I2C_Direction);	//I2C闁告瑦鍨块埀顑挎缁姷鎷嬮幆褜妲甸柛锔芥緲濞硷拷
uint8_t I2C_ReadRegister(I2C_TypeDef* I2Cx, uint8_t I2C_Register);		//I2C閻犲洩顕цぐ鍥┾偓闈涘閻°劑宕抽妸锔芥闁稿⿵鎷�

void I2C_ClearFlag(I2C_TypeDef* I2Cx, uint8_t I2C_FLAG);				//I2C婵炴挸鎳樺▍搴ｂ偓闈涘閻°劑宕抽妸褍笑闁诡剨鎷�
ITStatus I2C_GetStatus(I2C_TypeDef* I2Cx, uint8_t I2C_STATUS);			//I2C閻犲洩顕цぐ鍥偐閼哥鍋撻敓锟�
void I2C_ClearIT(I2C_TypeDef* I2Cx);									//I2C婵炴挸鎳樺▍搴㈢▔椤撶喐鐒介柡宥呮搐缁伙拷
void I2C_wait(I2C_TypeDef* I2Cx);										//I2C缂佹稑顦欢鐔稿閻樿櫣缈婚悗鐟版湰閻︼拷
void I2C_Unlock(I2C_TypeDef* I2Cx);										//I2C閻熸瑱缍佸▍搴ㄥ箑閼姐倕娈犳慨婵嗩煼閺€锟�
void I2C_BUSY(I2C_TypeDef* I2Cx);										//I2C缂佹稑顦欢鐔煎箑閼姐倕娈犵紒灞炬そ濡拷

void CAT24_Write(uint16_t Waddr,uint8_t Tdata);							//I2C CAT24闁圭ǹ娲ら悾楣冨捶閺夋寧绲婚柛鎰懃閸欏棝骞愰崶褏鏆伴柡浣哄瀹撲線鏁嶉崼鐔哄弨閻犲洢鍨洪弻鐔奉嚕韫囥儳绀�
uint8_t CAT24_Read(uint16_t Raddr);										//I2C CAT24闁圭ǹ娲ら悾楣冨捶閺夋寧绲婚悹鍥嚙閸ゎ參寮悧鍫濈ウ闁挎稑鐗婇悡锛勬嫚閵忊剝鐓欑€殿喖楠忕槐锟�
void CAT24_Write_Int(uint16_t Waddr,uint8_t Tdata);						//I2C CAT24闁圭ǹ娲ら悾楣冨捶閺夋寧绲婚柛鎰懃閸欏棝骞愰崶褏鏆伴柡浣哄瀹撲線鏁嶉崼婊嗗幀闁哄偆鍘介弻鐔奉嚕韫囥儳绀�
uint8_t CAT24_Read_Int(uint16_t Raddr);									//I2C CAT24闁圭ǹ娲ら悾楣冨捶閺夋寧绲婚悹鍥嚙閸ゎ參寮悧鍫濈ウ闁挎稑鐗呴懙鎴﹀棘椤撶喐鐓欑€殿喖楠忕槐锟�


#endif /* INCLUDE_I2C_H_ */
