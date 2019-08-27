Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6B39DFEA
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 09:58:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=upXwz8/y37sMins3g2dXoaawsA5EK/xd6UGE9KAvRLk=; b=JfqCN2Y2uLSld5
	d8gdI7wtzaJdMVrfCDhXxXbgtbKYTbbtV3vyJiBn+6i/c3k2iMRH3EaGz3G5RRmqYD2cPkTxsJbNS
	bl8s1SDxVS8yd3G/YFrEVHEawzKXCviVHDJ13GwubNHgojOgHMtQPCYGW0FiIllaYUmXJmziTsZii
	yfJya3l6Ss+fyhyyq5ow7vTvLQz7o5Ul/2jh38IAnWK0loRl7ZMYq8rG5Mf9XV1bO8twIk/Sc+YRr
	4/aJnS7YjkIopep+G6lmz2l9LEqcXkbSeIWfmps01YSoLFWaS54E4bzTPMRlwyLo3XJTo2Z6/lRk6
	8w4zHQgQZXjeTTPPPeWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2WNN-0005d3-QJ; Tue, 27 Aug 2019 07:58:49 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2WNJ-0005bt-LR
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 07:58:47 +0000
Received: from pps.filterd (m0098410.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7R7wDNs118873
 for <linux-riscv@lists.infradead.org>; Tue, 27 Aug 2019 03:58:43 -0400
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2umxgv4h4g-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-riscv@lists.infradead.org>; Tue, 27 Aug 2019 03:58:43 -0400
Received: from localhost
 by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-riscv@lists.infradead.org> from <rppt@linux.ibm.com>;
 Tue, 27 Aug 2019 08:58:41 +0100
Received: from b06avi18878370.portsmouth.uk.ibm.com (9.149.26.194)
 by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 27 Aug 2019 08:58:36 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id x7R7wZv544892514
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Aug 2019 07:58:35 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2115911C058;
 Tue, 27 Aug 2019 07:58:35 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id BA1F411C050;
 Tue, 27 Aug 2019 07:58:33 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.59])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Tue, 27 Aug 2019 07:58:33 +0000 (GMT)
Date: Tue, 27 Aug 2019 10:58:32 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [RFC PATCH 2/2] RISC-V: Add basic support for SBI v0.2
References: <20190826233256.32383-1-atish.patra@wdc.com>
 <20190826233256.32383-3-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826233256.32383-3-atish.patra@wdc.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19082707-4275-0000-0000-0000035DCFDC
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19082707-4276-0000-0000-0000386FFF65
Message-Id: <20190827075831.GD682@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-26_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908270089
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_005845_710600_7387651C 
X-CRM114-Status: GOOD (  27.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Albert Ou <aou@eecs.berkeley.edu>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Anup Patel <anup@brainfault.org>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Alexios Zavras <alexios.zavras@intel.com>,
 Gary Guo <gary@garyguo.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 04:32:56PM -0700, Atish Patra wrote:
> The SBI v0.2 introduces a base extension which is backward compatible
> with v0.1. Implement all helper functions and minimum required SBI
> calls from v0.2 for now. All other base extension function will be
> added later as per need.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  arch/riscv/include/asm/sbi.h | 68 +++++++++++++++++++++++++++++-------
>  arch/riscv/kernel/Makefile   |  1 +
>  arch/riscv/kernel/sbi.c      | 50 ++++++++++++++++++++++++++
>  arch/riscv/kernel/setup.c    |  2 ++
>  4 files changed, 108 insertions(+), 13 deletions(-)
>  create mode 100644 arch/riscv/kernel/sbi.c
> 
> diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> index 7f5ecaaaa0d7..4a4476956693 100644
> --- a/arch/riscv/include/asm/sbi.h
> +++ b/arch/riscv/include/asm/sbi.h
> @@ -8,7 +8,6 @@
>  
>  #include <linux/types.h>
>  
> -
>  #define SBI_EXT_LEGACY_SET_TIMER 0x0
>  #define SBI_EXT_LEGACY_CONSOLE_PUTCHAR 0x1
>  #define SBI_EXT_LEGACY_CONSOLE_GETCHAR 0x2
> @@ -19,28 +18,61 @@
>  #define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA_ASID 0x7
>  #define SBI_EXT_LEGACY_SHUTDOWN 0x8
>  
> -#define SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3) ({             \
> +#define SBI_EXT_BASE 0x10
> +
> +enum sbi_ext_base_fid {
> +	SBI_EXT_BASE_GET_SPEC_VERSION = 0,
> +	SBI_EXT_BASE_GET_IMP_ID,
> +	SBI_EXT_BASE_GET_IMP_VERSION,
> +	SBI_EXT_BASE_PROBE_EXT,
> +	SBI_EXT_BASE_GET_MVENDORID,
> +	SBI_EXT_BASE_GET_MARCHID,
> +	SBI_EXT_BASE_GET_MIMPID,
> +};
> +
> +#define SBI_CALL_LEGACY(ext, fid, arg0, arg1, arg2, arg3) ({	\
>  	register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);	\
>  	register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);	\
>  	register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);	\
>  	register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);	\
> -	register uintptr_t a7 asm ("a7") = (uintptr_t)(which);	\
> +	register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);	\
> +	register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);	\
>  	asm volatile ("ecall"					\
> -		      : "+r" (a0)				\
> -		      : "r" (a1), "r" (a2), "r" (a3), "r" (a7)	\
> +		      : "+r" (a0), "+r" (a1)			\
> +		      : "r" (a2), "r" (a3), "r" (a6), "r" (a7) \

Maybe I'm missing something, but how is this supposed to work on systems
with SBI v0.1? Wouldn't this cause a mismatch in the registers?

>  		      : "memory");				\
>  	a0;							\
>  })
>  
>  /* Lazy implementations until SBI is finalized */
> -#define SBI_CALL_LEGACY_0(which) SBI_CALL_LEGACY(which, 0, 0, 0, 0)
> -#define SBI_CALL_LEGACY_1(which, arg0) SBI_CALL_LEGACY(which, arg0, 0, 0, 0)
> -#define SBI_CALL_LEGACY_2(which, arg0, arg1) \
> -		SBI_CALL_LEGACY(which, arg0, arg1, 0, 0)
> -#define SBI_CALL_LEGACY_3(which, arg0, arg1, arg2) \
> -		SBI_CALL_LEGACY(which, arg0, arg1, arg2, 0)
> -#define SBI_CALL_LEGACY_4(which, arg0, arg1, arg2, arg3) \
> -		SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3)
> +#define SBI_CALL_LEGACY_0(ext) SBI_CALL_LEGACY(ext, 0, 0, 0, 0, 0)
> +#define SBI_CALL_LEGACY_1(ext, arg0) SBI_CALL_LEGACY(ext, 0, arg0, 0, 0, 0)
> +#define SBI_CALL_LEGACY_2(ext, arg0, arg1) \
> +		SBI_CALL_LEGACY(ext, 0, arg0, arg1, 0, 0)
> +#define SBI_CALL_LEGACY_3(ext, arg0, arg1, arg2) \
> +		SBI_CALL_LEGACY(ext, 0, arg0, arg1, arg2, 0)
> +#define SBI_CALL_LEGACY_4(ext, arg0, arg1, arg2, arg3) \
> +		SBI_CALL_LEGACY(ext, 0, arg0, arg1, arg2, arg3)
> +
> +extern unsigned long sbi_firmware_version;
> +struct sbiret {
> +	long error;
> +	long value;
> +};
> +
> +void riscv_sbi_init(void);
> +struct sbiret riscv_sbi_ecall(int ext, int fid, int arg0, int arg1,
> +			       int arg2, int arg3);
> +
> +#define SBI_CALL_0(ext, fid) riscv_sbi_ecall(ext, fid, 0, 0, 0, 0)
> +#define SBI_CALL_1(ext, fid, arg0) riscv_sbi_ecall(ext, fid, arg0, 0, 0, 0)
> +#define SBI_CALL_2(ext, fid, arg0, arg1) \
> +		riscv_sbi_ecall(ext, fid, arg0, arg1, 0, 0)
> +#define SBI_CALL_3(ext, fid, arg0, arg1, arg2) \
> +		riscv_sbi_ecall(ext, fid, arg0, arg1, arg2, 0)
> +#define SBI_CALL_4(ext, fid, arg0, arg1, arg2, arg3) \
> +		riscv_sbi_ecall(ext, fid, arg0, arg1, arg2, arg3)
> +
>  
>  static inline void sbi_console_putchar(int ch)
>  {
> @@ -99,4 +131,14 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
>  			  start, size, asid);
>  }
>  
> +static inline unsigned long riscv_sbi_major_version(void)
> +{
> +	return (sbi_firmware_version >> 24) & 0x7f;
> +}
> +
> +static inline unsigned long riscv_sbi_minor_version(void)
> +{
> +	return sbi_firmware_version & 0xffffff;
> +}
> +
>  #endif
> diff --git a/arch/riscv/kernel/Makefile b/arch/riscv/kernel/Makefile
> index 2420d37d96de..faf862d26924 100644
> --- a/arch/riscv/kernel/Makefile
> +++ b/arch/riscv/kernel/Makefile
> @@ -17,6 +17,7 @@ obj-y	+= irq.o
>  obj-y	+= process.o
>  obj-y	+= ptrace.o
>  obj-y	+= reset.o
> +obj-y	+= sbi.o
>  obj-y	+= setup.o
>  obj-y	+= signal.o
>  obj-y	+= syscall_table.o
> diff --git a/arch/riscv/kernel/sbi.c b/arch/riscv/kernel/sbi.c
> new file mode 100644
> index 000000000000..457b8cc0e9d9
> --- /dev/null
> +++ b/arch/riscv/kernel/sbi.c
> @@ -0,0 +1,50 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * SBI initialilization and base extension implementation.
> + *
> + * Copyright (c) 2019 Western Digital Corporation or its affiliates.
> + */
> +
> +#include <asm/sbi.h>
> +#include <linux/sched.h>
> +
> +unsigned long sbi_firmware_version;
> +
> +struct sbiret riscv_sbi_ecall(int ext, int fid, int arg0, int arg1,
> +			     int arg2, int arg3)
> +{
> +	struct sbiret ret;
> +
> +	register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);
> +	register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);
> +	register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);
> +	register uintptr_t a3 asm ("a3") = (uintptr_t)(arg3);
> +	register uintptr_t a6 asm ("a6") = (uintptr_t)(fid);
> +	register uintptr_t a7 asm ("a7") = (uintptr_t)(ext);
> +	asm volatile ("ecall"
> +		      : "+r" (a0), "+r" (a1)
> +		      : "r" (a2), "r" (a3), "r" (a6), "r" (a7)
> +		      : "memory");
> +	ret.error = a0;
> +	ret.value = a1;
> +
> +	return ret;
> +}
> +
> +static struct sbiret sbi_get_spec_version(void)
> +{
> +	return SBI_CALL_0(SBI_EXT_BASE, SBI_EXT_BASE_GET_SPEC_VERSION);
> +}
> +
> +void riscv_sbi_init(void)
> +{
> +	struct sbiret ret;
> +
> +	/* legacy SBI version*/
> +	sbi_firmware_version = 0x1;
> +	ret = sbi_get_spec_version();
> +	if (!ret.error)
> +		sbi_firmware_version = ret.value;
> +	pr_info("SBI version implemented in firmware [%lu:%lu]\n",
> +		riscv_sbi_major_version(), riscv_sbi_minor_version());
> +}
> diff --git a/arch/riscv/kernel/setup.c b/arch/riscv/kernel/setup.c
> index a990a6cb184f..4c324fd398c8 100644
> --- a/arch/riscv/kernel/setup.c
> +++ b/arch/riscv/kernel/setup.c
> @@ -21,6 +21,7 @@
>  #include <asm/sections.h>
>  #include <asm/pgtable.h>
>  #include <asm/smp.h>
> +#include <asm/sbi.h>
>  #include <asm/tlbflush.h>
>  #include <asm/thread_info.h>
>  
> @@ -70,6 +71,7 @@ void __init setup_arch(char **cmdline_p)
>  	swiotlb_init(1);
>  #endif
>  
> +	riscv_sbi_init();
>  #ifdef CONFIG_SMP
>  	setup_smp();
>  #endif
> -- 
> 2.21.0
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
