/* linux/arch/arm/mach-msm/rpc_hsusb.c
 *
 * Copyright (c) 2008-2009, Code Aurora Forum. All rights reserved.
 *
 * All source code in this file is licensed under the following license except
 * where indicated.
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License version 2 as published
 * by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 *
 * See the GNU General Public License for more details.
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, you can find it at http://www.fsf.org
 */

/* LGE_CHANGE [dojip.kim@lge.com] 2010-03-19, move the codes related to charger into rpc_charger.c */

#include <linux/err.h>
#include <mach/rpc_hsusb.h>
#include <asm/mach-types.h>
/* LGE_CHANGE_S [jinwoonam@lge.com] 2009.03.03 */
#if defined(CONFIG_MACH_EVE)
#include "proc_comm.h"
/* LGE_CHANGE [dojip.kim@lge.com] 2010-03-18, proc_comm_batt.h */
#include "proc_comm_batt.h"
#define USE_PROC_COMM_BATT
//#define DEBUG_CHG

#ifdef DEBUG_CHG
#define D(fmt,args...) printk(fmt, ##args)
#else
#define D(fmt,args...) do { } while(0)
#endif
#endif /* CONFIG_MACH_EVE */
/* LGE_CHANGE_E [jinwoonam@lge.com] 2009.03.03 */

static struct msm_rpc_endpoint *usb_ep;

struct msm_hsusb_rpc_ids {
	unsigned long	prog;
	unsigned long	vers_comp;
	unsigned long	init_phy;
	unsigned long	vbus_pwr_up;
	unsigned long	vbus_pwr_down;
	unsigned long	update_product_id;
	unsigned long	update_serial_num;
	unsigned long	update_is_serial_num_null;
	unsigned long	reset_rework_installed;
	unsigned long	enable_pmic_ulpi_data0;
	unsigned long	disable_pmic_ulpi_data0;
};

static struct msm_hsusb_rpc_ids usb_rpc_ids;

static int msm_hsusb_init_rpc_ids(unsigned long vers)
{
	if (vers == 0x00010001) {
		usb_rpc_ids.prog			= 0x30000064;
		usb_rpc_ids.vers_comp			= 0x00010001;
		usb_rpc_ids.init_phy			= 2;
		usb_rpc_ids.vbus_pwr_up			= 6;
		usb_rpc_ids.vbus_pwr_down		= 7;
		usb_rpc_ids.update_product_id		= 8;
		usb_rpc_ids.update_serial_num		= 9;
		usb_rpc_ids.update_is_serial_num_null	= 10;
		usb_rpc_ids.reset_rework_installed	= 17;
		usb_rpc_ids.enable_pmic_ulpi_data0	= 18;
		usb_rpc_ids.disable_pmic_ulpi_data0	= 19;
		return 0;
	} else if (vers == 0x00010002) {
		usb_rpc_ids.prog			= 0x30000064;
		usb_rpc_ids.vers_comp			= 0x00010002;
		usb_rpc_ids.init_phy			= 2;
		usb_rpc_ids.vbus_pwr_up			= 6;
		usb_rpc_ids.vbus_pwr_down		= 7;
		usb_rpc_ids.update_product_id		= 8;
		usb_rpc_ids.update_serial_num		= 9;
		usb_rpc_ids.update_is_serial_num_null	= 10;
		usb_rpc_ids.reset_rework_installed	= 17;
		usb_rpc_ids.enable_pmic_ulpi_data0	= 18;
		usb_rpc_ids.disable_pmic_ulpi_data0	= 19;
		return 0;
	} else {
		printk(KERN_INFO "%s: no matches found for version\n",
			__func__);
		return -ENODATA;
	}
}

/* rpc connect for hsusb */
int msm_hsusb_rpc_connect(void)
{

	if (usb_ep && !IS_ERR(usb_ep)) {
		printk(KERN_INFO "%s: usb_ep already connected\n", __func__);
		return 0;
	}

	/* Initialize rpc ids */
	if (msm_hsusb_init_rpc_ids(0x00010001)) {
		printk(KERN_ERR "%s: rpc ids initialization failed\n"
			, __func__);
		return -ENODATA;
	}

/* LGE_CHANGE_S [ljmblueday@lge.com] 2009-07-28, fixed rpc problem */
	//jyoo
#if 0	
	usb_ep = msm_rpc_connect_compatible(usb_rpc_ids.prog,
					usb_rpc_ids.vers_comp, 0);
#endif
	usb_ep = msm_rpc_connect_compatible(usb_rpc_ids.prog,
					usb_rpc_ids.vers_comp, 0x0001); //with MSM_RPC_UNINTERRUPTIBLE
	//jyoo end
/* LGE_CHANGE_E [ljmblueday@lge.com] 2009-07-28 */
	if (IS_ERR(usb_ep)) {
		printk(KERN_ERR "%s: connect compatible failed vers = %lx\n",
			 __func__, usb_rpc_ids.vers_comp);

		/* Initialize rpc ids */
		if (msm_hsusb_init_rpc_ids(0x00010002)) {
			printk(KERN_ERR "%s: rpc ids initialization failed\n",
				__func__);
			return -ENODATA;
		}
/* LGE_CHANGE_S [ljmblueday@lge.com] 2009-07-28, fixed rpc problem */		
		//jyoo
#if 0
		usb_ep = msm_rpc_connect_compatible(usb_rpc_ids.prog,
					usb_rpc_ids.vers_comp, 0);
#endif
		usb_ep = msm_rpc_connect_compatible(usb_rpc_ids.prog,
						usb_rpc_ids.vers_comp, 0x0001); //with MSM_RPC_UNINTERRUPTIBLE
		//jyoo end
/* LGE_CHANGE_E [ljmblueday@lge.com] 2009-07-28 */ 	
	}

	if (IS_ERR(usb_ep)) {
		printk(KERN_ERR "%s: connect compatible failed vers = %lx\n",
				__func__, usb_rpc_ids.vers_comp);
		return -EAGAIN;
	} else
		printk(KERN_INFO "%s: rpc connect success vers = %lx\n",
				__func__, usb_rpc_ids.vers_comp);

	return 0;
}
EXPORT_SYMBOL(msm_hsusb_rpc_connect);

/* rpc call for phy_reset */
int msm_hsusb_phy_reset(void)
{
	int rc = 0;
	struct hsusb_phy_start_req {
		struct rpc_request_hdr hdr;
	} req;

	if (!usb_ep || IS_ERR(usb_ep)) {
		printk(KERN_ERR "%s: phy_reset rpc failed before call,"
			"rc = %ld\n", __func__, PTR_ERR(usb_ep));
		return -EAGAIN;
	}

	rc = msm_rpc_call(usb_ep, usb_rpc_ids.init_phy,
				&req, sizeof(req), 5 * HZ);

	if (rc < 0) {
		printk(KERN_ERR "%s: phy_reset rpc failed! rc = %d\n",
			__func__, rc);
	} else
		printk(KERN_INFO "msm_hsusb_phy_reset\n");

	return rc;
}
EXPORT_SYMBOL(msm_hsusb_phy_reset);

/* rpc call for vbus powerup */
int msm_hsusb_vbus_powerup(void)
{
	int rc = 0;
	struct hsusb_phy_start_req {
		struct rpc_request_hdr hdr;
	} req;

	if (!usb_ep || IS_ERR(usb_ep)) {
		printk(KERN_ERR "%s: vbus_powerup rpc failed before call,"
			"rc = %ld\n", __func__, PTR_ERR(usb_ep));
		return -EAGAIN;
	}

	rc = msm_rpc_call(usb_ep, usb_rpc_ids.vbus_pwr_up,
		&req, sizeof(req), 5 * HZ);

	if (rc < 0) {
		printk(KERN_ERR "%s: vbus_powerup failed! rc = %d\n",
			__func__, rc);
	} else
		printk(KERN_INFO "msm_hsusb_vbus_powerup\n");

	return rc;
}
EXPORT_SYMBOL(msm_hsusb_vbus_powerup);

/* rpc call for vbus shutdown */
int msm_hsusb_vbus_shutdown(void)
{
	int rc = 0;
	struct hsusb_phy_start_req {
		struct rpc_request_hdr hdr;
	} req;

	if (!usb_ep || IS_ERR(usb_ep)) {
		printk(KERN_ERR "%s: vbus_shutdown rpc failed before call,"
			"rc = %ld\n", __func__, PTR_ERR(usb_ep));
		return -EAGAIN;
	}

	rc = msm_rpc_call(usb_ep, usb_rpc_ids.vbus_pwr_down,
		&req, sizeof(req), 5 * HZ);

	if (rc < 0) {
		printk(KERN_ERR "%s: vbus_shutdown failed! rc = %d\n",
			__func__, rc);
	} else
		printk(KERN_INFO "msm_hsusb_vbus_shutdown\n");

	return rc;
}
EXPORT_SYMBOL(msm_hsusb_vbus_shutdown);

int msm_hsusb_send_productID(uint32_t product_id)
{
	int rc = 0;
	struct hsusb_phy_start_req {
		struct rpc_request_hdr hdr;
		uint32_t product_id;
	} req;

	if (!usb_ep || IS_ERR(usb_ep)) {
		printk(KERN_ERR "%s: rpc connect failed: rc = %ld\n",
			__func__, PTR_ERR(usb_ep));
		return -EAGAIN;
	}

	req.product_id = cpu_to_be32(product_id);
	rc = msm_rpc_call(usb_ep, usb_rpc_ids.update_product_id,
				&req, sizeof(req),
				5 * HZ);
	if (rc < 0)
		printk(KERN_ERR "%s: rpc call failed! error: %d\n",
			__func__, rc);
	else
		printk(KERN_ERR "%s: rpc call success\n" ,
			__func__);
	return rc;
}
EXPORT_SYMBOL(msm_hsusb_send_productID);

int msm_hsusb_send_serial_number(char *serial_number)
{
	int rc = 0, serial_len;
	struct hsusb_phy_start_req {
		struct rpc_request_hdr hdr;
		uint32_t length;
		char serial_num[20];
	} req;

	if (!usb_ep || IS_ERR(usb_ep)) {
		printk(KERN_ERR "%s: rpc connect failed: rc = %ld\n",
			__func__, PTR_ERR(usb_ep));
		return -EAGAIN;
	}

	serial_len  = strlen(serial_number)+1;
	strncpy(req.serial_num, serial_number, 20);
	req.length = cpu_to_be32(serial_len);
	rc = msm_rpc_call(usb_ep, usb_rpc_ids.update_serial_num,
				&req, sizeof(req),
				5 * HZ);
	if (rc < 0)
		printk(KERN_ERR "%s: rpc call failed! error: %d\n",
			__func__, rc);
	else
		printk(KERN_ERR "%s: rpc call success\n" ,
			__func__);
	return rc;
}
EXPORT_SYMBOL(msm_hsusb_send_serial_number);

int msm_hsusb_is_serial_num_null(uint32_t val)
{
	int rc = 0;
	struct hsusb_phy_start_req {
			struct rpc_request_hdr hdr;
			uint32_t value;
	} req;

	if (!usb_ep || IS_ERR(usb_ep)) {
		printk(KERN_ERR "%s: rpc connect failed: rc = %ld\n",
			__func__, PTR_ERR(usb_ep));
		return -EAGAIN;
	}
	if (!usb_rpc_ids.update_is_serial_num_null) {
		printk(KERN_ERR "%s: proc id not supported \n", __func__);
		return -ENODATA;
	}

	req.value = cpu_to_be32(val);
	rc = msm_rpc_call(usb_ep, usb_rpc_ids.update_is_serial_num_null,
				&req, sizeof(req),
				5 * HZ);
	if (rc < 0)
		printk(KERN_ERR "%s: rpc call failed! error: %d\n" ,
			__func__, rc);
	else
		printk(KERN_ERR "%s: rpc call success\n" ,
			__func__);

	return rc;
}
EXPORT_SYMBOL(msm_hsusb_is_serial_num_null);

/* rpc call to close connection */
int msm_hsusb_rpc_close(void)
{
	int rc = 0;

	if (IS_ERR(usb_ep)) {
		printk(KERN_ERR "%s: rpc_close failed before call, rc = %ld\n",
			__func__, PTR_ERR(usb_ep));
		return -EAGAIN;
	}

	rc = msm_rpc_close(usb_ep);
	usb_ep = NULL;

	if (rc < 0) {
		printk(KERN_ERR "%s: close rpc failed! rc = %d\n",
			__func__, rc);
		return -EAGAIN;
	} else
		printk(KERN_INFO "rpc close success\n");

	return rc;
}
EXPORT_SYMBOL(msm_hsusb_rpc_close);

int msm_hsusb_reset_rework_installed(void)
{
	int rc = 0;
	struct hsusb_start_req {
		struct rpc_request_hdr hdr;
	} req;
	struct hsusb_rpc_rep {
		struct rpc_reply_hdr hdr;
		uint32_t rework;
	} rep;

	memset(&rep, 0, sizeof(rep));

	if (!usb_ep || IS_ERR(usb_ep)) {
		pr_err("%s: hsusb rpc connection not initialized, rc = %ld\n",
			__func__, PTR_ERR(usb_ep));
		return -EAGAIN;
	}

	rc = msm_rpc_call_reply(usb_ep, usb_rpc_ids.reset_rework_installed,
				&req, sizeof(req),
				&rep, sizeof(rep), 5 * HZ);

	if (rc < 0) {
		pr_err("%s: rpc call failed! error: (%d)"
				"proc id: (%lx)\n",
				__func__, rc,
				usb_rpc_ids.reset_rework_installed);
		return rc;
	}

	pr_info("%s: rework: (%d)\n", __func__, rep.rework);
	return be32_to_cpu(rep.rework);
}
EXPORT_SYMBOL(msm_hsusb_reset_rework_installed);

static int msm_hsusb_pmic_ulpidata0_config(int enable)
{
	int rc = 0;
	struct hsusb_start_req {
		struct rpc_request_hdr hdr;
	} req;

	if (!usb_ep || IS_ERR(usb_ep)) {
		pr_err("%s: hsusb rpc connection not initialized, rc = %ld\n",
			__func__, PTR_ERR(usb_ep));
		return -EAGAIN;
	}

	if (enable)
		rc = msm_rpc_call(usb_ep, usb_rpc_ids.enable_pmic_ulpi_data0,
					&req, sizeof(req), 5 * HZ);
	else
		rc = msm_rpc_call(usb_ep, usb_rpc_ids.disable_pmic_ulpi_data0,
					&req, sizeof(req), 5 * HZ);

	if (rc < 0)
		pr_err("%s: rpc call failed! error: %d\n",
				__func__, rc);
	return rc;
}

int msm_hsusb_enable_pmic_ulpidata0(void)
{
	return msm_hsusb_pmic_ulpidata0_config(1);
}
EXPORT_SYMBOL(msm_hsusb_enable_pmic_ulpidata0);

int msm_hsusb_disable_pmic_ulpidata0(void)
{
	return msm_hsusb_pmic_ulpidata0_config(0);
}
EXPORT_SYMBOL(msm_hsusb_disable_pmic_ulpidata0);

/* LGE_CHANGE_S [ljmblueday@lge.com] 2009-08-21, for Serial number generation */	
#if 1//def USE_IMEI
#define ONCRPC_NV_CMD_REMOTE_PROC	9
#define NV_IMEI_GET_PROG					0x3000000e
#define NV_IMEI_GET_VER	 				0xd0b61921
#define NV_UE_IMEI_SIZE						9
#define MAX_IMEI_SIZE						(NV_UE_IMEI_SIZE -1) * 2
        
int msm_nv_imei_get(unsigned char *nv_imei_ptr)
{
	static struct msm_rpc_endpoint *nv_imei_get_ep;
	int rc = 0;
	uint32_t nv_result;
	uint32_t dummy1, dummy2;
	nv_ue_imei_type imea_data;
//	unsigned char imei_ptr[MAX_IMEI_SIZE+3];
	int i;
	
	struct msm_nv_imem_get_req {
		struct rpc_request_hdr hdr;
		nv_func_enum_type cmd;
		nv_items_enum_type item;
		uint32_t more_data;
		nv_items_enum_type disc;
		nv_ue_imei_type imea_data;;			
	} req;
		  
	struct hsusb_rpc_rep {
		struct rpc_reply_hdr hdr;
		nv_stat_enum_type result_item;
		uint32_t rep_more_data;
		nv_items_enum_type rep_disc;
		nv_ue_imei_type imea_data;;		
	} rep;
		  
	nv_imei_get_ep = msm_rpc_connect(NV_IMEI_GET_PROG, NV_IMEI_GET_VER, 0);

	if (IS_ERR(nv_imei_get_ep)) {
		printk(KERN_ERR "%s: msm_rpc_connect failed! rc = %ld\n", 
							__func__, PTR_ERR(nv_imei_get_ep));
		return -EINVAL;
	}
	
	req.cmd = cpu_to_be32(NV_READ_F);
	req.item = cpu_to_be32(NV_UE_IMEI_I);
	req.more_data = cpu_to_be32(1);
	req.disc = cpu_to_be32(NV_UE_IMEI_I);
	req.imea_data = imea_data;
	
	rc = msm_rpc_call_reply(nv_imei_get_ep,
					ONCRPC_NV_CMD_REMOTE_PROC,
					&req, sizeof(req),
					&rep, sizeof(rep),
					5 * HZ);
	if (rc < 0)
		printk(KERN_ERR "%s: msm_rpc_call failed! rc = %d\n", __func__, rc);

	nv_result = be32_to_cpu(rep.result_item);
	dummy1 = be32_to_cpu(rep.rep_more_data);
	dummy2 = be32_to_cpu(rep.rep_disc);
	
//	printk(KERN_ERR "[JMLEE] nv item is");
	for(i = 0 ; i<NV_UE_IMEI_SIZE; i++)
	{
		if ((rep.imea_data.ue_imei[i] & 0x0F) >= 0xA)
			*(nv_imei_ptr +i*2) = (rep.imea_data.ue_imei[i] & 0x0F) + 55;
		else
			*(nv_imei_ptr +i*2) = (rep.imea_data.ue_imei[i] & 0x0F) + 48;
		if (((rep.imea_data.ue_imei[i] & 0xF0) >> 4) >=0xA)			
			*(nv_imei_ptr +i*2 + 1) = ((rep.imea_data.ue_imei[i] & 0xF0) >> 4) + 55;
		else
			*(nv_imei_ptr +i*2 + 1) = ((rep.imea_data.ue_imei[i] & 0xF0) >> 4) + 48;
//		printk(KERN_ERR "%c %c ", *(nv_imei_ptr +i*2), *(nv_imei_ptr +i*2 + 1) );
	}
//	printk(KERN_ERR "\n");
	*(nv_imei_ptr +MAX_IMEI_SIZE + 2) = '\0';
	msm_rpc_close(nv_imei_get_ep);
	
	return rc;
} 
#endif
EXPORT_SYMBOL(msm_nv_imei_get);

/* LGE_CHANGE_E [ljmblueday@lge.com] 2009-08-21 */	
