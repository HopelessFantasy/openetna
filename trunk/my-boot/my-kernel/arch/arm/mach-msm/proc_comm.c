/* arch/arm/mach-msm/proc_comm.c
 *
 * Copyright (C) 2007-2008 Google, Inc.
 * Copyright (c) 2009, Code Aurora Forum. All rights reserved.
 * Author: Brian Swetland <swetland@google.com>
 *
 * This software is licensed under the terms of the GNU General Public
 * License version 2, as published by the Free Software Foundation, and
 * may be copied, distributed, and modified under those terms.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 */

#include <linux/delay.h>
#include <linux/errno.h>
#include <linux/io.h>
#include <linux/spinlock.h>
#include <linux/module.h>
#include <mach/msm_iomap.h>
#include <mach/system.h>

#include "proc_comm.h"

/* LGE_CHANGE_S [bluerti@lge.com] 2009-07-06 <For Error Handler > */
#include "smd_private.h"
#include "lge_errorhandler.h"
/* LGE_CHANGE_E [bluerti@lge.com] 2009-07-06 <For Error Handler > */


#if defined(CONFIG_ARCH_MSM7X30)
#define MSM_TRIG_A2M_INT(n) (writel(1 << n, MSM_GCC_BASE + 0x8))
#else
#define MSM_TRIG_A2M_INT(n) (writel(1, MSM_CSR_BASE + 0x400 + (n) * 4))
#endif

static inline void notify_other_proc_comm(void)
{
	MSM_TRIG_A2M_INT(6);
}

#define APP_COMMAND 0x00
#define APP_STATUS  0x04
#define APP_DATA1   0x08
#define APP_DATA2   0x0C

#define MDM_COMMAND 0x10
#define MDM_STATUS  0x14
#define MDM_DATA1   0x18
#define MDM_DATA2   0x1C

static DEFINE_SPINLOCK(proc_comm_lock);

/* The higher level SMD support will install this to
 * provide a way to check for and handle modem restart?
 */
int (*msm_check_for_modem_crash)(void);

/* Poll for a state change, checking for possible
 * modem crashes along the way (so we don't wait
 * forever while the ARM9 is blowing up.
 *
 * Return an error in the event of a modem crash and
 * restart so the msm_proc_comm() routine can restart
 * the operation from the beginning.
 */
static int proc_comm_wait_for(unsigned addr, unsigned value)
{
	while (1) {
		if (readl(addr) == value)
			return 0;

		if (msm_check_for_modem_crash)
			if (msm_check_for_modem_crash())
				return -EAGAIN;

		udelay(5);
	}
}

void msm_proc_comm_reset_modem_now(void)
{
	unsigned base = (unsigned)MSM_SHARED_RAM_BASE;
	unsigned long flags;

	spin_lock_irqsave(&proc_comm_lock, flags);

again:
	if (proc_comm_wait_for(base + MDM_STATUS, PCOM_READY))
		goto again;

	writel(PCOM_RESET_MODEM, base + APP_COMMAND);
	writel(0, base + APP_DATA1);
	writel(0, base + APP_DATA2);

	spin_unlock_irqrestore(&proc_comm_lock, flags);

	notify_other_proc_comm();

	return;
}
EXPORT_SYMBOL(msm_proc_comm_reset_modem_now);

/* LGE_UPDATE_S [jinwoonam@lge.com] 2009-08-29 */
#if defined(CONFIG_MACH_EVE)
int msm_proc_comm_get_ftm(int *ftm)
{
	int fntype = CUSTOMER_CMD2_BATT_IS_FTM;

	if (msm_proc_comm(PCOM_CUSTOMER_CMD2, ftm, &fntype))
		return -1;

	return 0;
}
EXPORT_SYMBOL(msm_proc_comm_get_ftm);

int msm_proc_comm_get_hw_rev(int *hw_rev)
{
	int fntype = CUSTOMER_CMD2_BATT_GET_HW_REV;

	if (msm_proc_comm(PCOM_CUSTOMER_CMD2, hw_rev, &fntype))
		return -1;

	return 0;
}
EXPORT_SYMBOL(msm_proc_comm_get_hw_rev);
#endif
/* LGE_UPDATE_E [jinwoonam@lge.com] 2009-08-29 */

int msm_proc_comm(unsigned cmd, unsigned *data1, unsigned *data2)
{
	unsigned base = (unsigned)MSM_SHARED_RAM_BASE;
	unsigned long flags;
	int ret;

	spin_lock_irqsave(&proc_comm_lock, flags);

again:
	if (proc_comm_wait_for(base + MDM_STATUS, PCOM_READY))
		goto crash; //goto again; /* LGE_CHANGE [bluerti@lge.com] 2009-07-06 <For Error Handler > */

	writel(cmd, base + APP_COMMAND);
	writel(data1 ? *data1 : 0, base + APP_DATA1);
	writel(data2 ? *data2 : 0, base + APP_DATA2);

	notify_other_proc_comm();

	if (proc_comm_wait_for(base + APP_COMMAND, PCOM_CMD_DONE))
		goto crash ;//goto again;/* LGE_CHANGE_S [bluerti@lge.com] 2009-07-06 <For Error Handler > */

	if (readl(base + APP_STATUS) == PCOM_CMD_SUCCESS) {
		if (data1)
			*data1 = readl(base + APP_DATA1);
		if (data2)
			*data2 = readl(base + APP_DATA2);
		ret = 0;
	} else {
		ret = -EIO;
	}

	writel(PCOM_CMD_IDLE, base + APP_COMMAND);

	spin_unlock_irqrestore(&proc_comm_lock, flags);
	return ret;
/* LGE_CHANGE_S [bluerti@lge.com] 2009-07-06 <For Error Handler > */
crash:
	{
		extern char * error_modem_message ;
		extern int get_status_hidden_reset();
		int ret;
		spin_unlock_irqrestore(&proc_comm_lock, flags);
		if(get_status_hidden_reset()==0 ) {
			ret = LGE_ErrorHandler_Main(MODEM_CRASH, error_modem_message);
			smsm_reset_modem(ret);
		} else {
			smsm_reset_modem(SMSM_SYSTEM_REBOOT);
		}
		while(1) 
			;
	}
/* LGE_CHANGE_E [bluerti@lge.com] 2009-07-06 <For Error Handler > */

}
EXPORT_SYMBOL(msm_proc_comm);
