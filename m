Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB613C11E
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 03:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AOgk5TrHIRSQDjmbi7Kbu+0x0OquUb/Ap5mGIPwp9TI=; b=PNX69sFVW84GtD
	2n16ENRnkeELtwyvmWPOGtAxGQYDXM8nwYyXGJwEEmzrTpVwRUGO+VST++fwQLep0Zn4HhAKkjXwQ
	SW6tvop/UiKev8zW3WwLBYjlgG4IZ/ExgMhBA03rme7sbjFN8ZlrGyzLeNRJG9e/4xI+HBGIV+NiI
	CwTJw+kQzc7Lb+HdYwwcVZzztJHp4eHDCZIx0Atr0oaNeVC6Wvol8z6MOrhHZBR3uOWTEE94cNKwt
	r3m+6ys+O7AOfZWEJh8ZN/2TXcItewm8jownNfGjMPfmM/PDhClRSWUt+2D4GjPdnIsEkGLlDE+mC
	AWHiC7gLdGe3u2ImkoQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haW23-0004Cs-Qn; Tue, 11 Jun 2019 01:57:03 +0000
Received: from mail-eopbgr100102.outbound.protection.outlook.com
 ([40.107.10.102] helo=GBR01-LO2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haW1Y-0003tw-7W; Tue, 11 Jun 2019 01:56:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=garyguo.net;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VPCibjSLFJ8QPugcKS3wvBhWTo2k1dG0NzaEWarL6Bg=;
 b=AbpUSdv2Vc6x2t0TVkfgwMKUAa7ljFJU5fC5OG3+ldeABsga6+9OJjxE9IoAG+tmbFUT3ZBLMtCgsfiPBrE1MZeilVnmggqrJtgSA2INvNZhO2yayPeQao+ea6prXzplnDlDAB27qKFGwa34pWf4fLQjEa88KFcrcUGkUkf43jQ=
Received: from LO2P265MB0847.GBRP265.PROD.OUTLOOK.COM (20.176.139.20) by
 LO2P265MB0464.GBRP265.PROD.OUTLOOK.COM (10.166.98.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1965.12; Tue, 11 Jun 2019 01:56:26 +0000
Received: from LO2P265MB0847.GBRP265.PROD.OUTLOOK.COM
 ([fe80::c4af:389:2951:fdd1]) by LO2P265MB0847.GBRP265.PROD.OUTLOOK.COM
 ([fe80::c4af:389:2951:fdd1%7]) with mapi id 15.20.1965.017; Tue, 11 Jun 2019
 01:56:26 +0000
From: Gary Guo <gary@garyguo.net>
To: Palmer Dabbelt <palmer@sifive.com>, "julien.grall@arm.com"
 <julien.grall@arm.com>
Subject: RE: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
Thread-Topic: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
 separate file
Thread-Index: AQHVG7+VzWoWPgdUJU+rwDAjKiBFD6aNhr6AgAgynaA=
Date: Tue, 11 Jun 2019 01:56:26 +0000
Message-ID: <LO2P265MB0847332B1573840C3D45A2B3D6ED0@LO2P265MB0847.GBRP265.PROD.OUTLOOK.COM>
References: <0dfe120b-066a-2ac8-13bc-3f5a29e2caa3@arm.com>
 <mhng-ad35c591-c74e-44b4-b816-38bf66fe9740@palmer-si-x1e>
In-Reply-To: <mhng-ad35c591-c74e-44b4-b816-38bf66fe9740@palmer-si-x1e>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=gary@garyguo.net; 
x-originating-ip: [2001:470:6972:501:2013:f57c:b021:47b0]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 306b3dd3-aa4f-4043-5dc4-08d6ee100371
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:LO2P265MB0464; 
x-ms-traffictypediagnostic: LO2P265MB0464:
x-microsoft-antispam-prvs: <LO2P265MB04641D02AAD9365EF8E78A89D6ED0@LO2P265MB0464.GBRP265.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 006546F32A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39830400003)(376002)(366004)(396003)(136003)(13464003)(189003)(199004)(52536014)(8936002)(6436002)(229853002)(7416002)(25786009)(6116002)(76116006)(66556008)(55016002)(64756008)(81166006)(81156014)(8676002)(316002)(66476007)(4326008)(66946007)(73956011)(6246003)(5660300002)(86362001)(71200400001)(102836004)(71190400001)(2906002)(53936002)(54906003)(110136005)(74316002)(14454004)(476003)(66446008)(305945005)(99286004)(14444005)(11346002)(53946003)(9686003)(256004)(7696005)(2501003)(446003)(7736002)(33656002)(186003)(30864003)(508600001)(486006)(46003)(68736007)(53546011)(6506007)(76176011)(87944003)(579004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:LO2P265MB0464;
 H:LO2P265MB0847.GBRP265.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: garyguo.net does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: K7LNFpzKy/fXGiteJSxdXanaSdvXFzCqXFX33QCp8PWzJGaNT/gxozwKVasYw4vV9ZJWiWJP87YqlUjzvdhhp3aG7CQIT4yPYlD9Q6IK8TnGJfm1X0aIhsvEnZB0H7Dn7+y86jslPonxeTAjuhiGmUfgj5uOuLqW7dCH+IRFBiB6xw88lccczXawh5s2oOGP/j1U40fHHMJtRKnS6PM0+M5d0kvspixzsyNMmDXuX3cUU5mWXoPg7/EwupyOv5wcsnsBcpr2D/zTpboQVmnEHWV5f3oqHc0WRRoYg9psAMqzBPWBOs2iaVYQhGjcNlcWLQw81nIXtaFmpicr6NxuE2rm0NYaaH6AUcWI/6RjFpGlP9CPhjMen+I8KcwAH9wTJc0MK6W7u2ak57Qxoa+7Hj0gXDpg7AZmQ24j8R7SFS0=
MIME-Version: 1.0
X-OriginatorOrg: garyguo.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 306b3dd3-aa4f-4043-5dc4-08d6ee100371
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2019 01:56:26.3223 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bbc898ad-b10f-4e10-8552-d9377b823d45
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gary@garyguo.net
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO2P265MB0464
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_185632_481312_05B2C392 
X-CRM114-Status: GOOD (  30.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.10.102 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "julien.thierry@arm.com" <julien.thierry@arm.com>,
 "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "christoffer.dall@arm.com" <christoffer.dall@arm.com>,
 "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Anup Patel <Anup.Patel@wdc.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 Christoph Hellwig <hch@infradead.org>, Atish Patra <Atish.Patra@wdc.com>,
 "james.morse@arm.com" <james.morse@arm.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
 "kvmarm@lists.cs.columbia.edu" <kvmarm@lists.cs.columbia.edu>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi,

On RISC-V, we can only use ASID if there are more ASIDs than CPUs. If there aren't enough ASIDs (or if there is only 1), then ASID feature is disabled and 0 is used everywhere.

Best,
Gary

> -----Original Message-----
> From: Palmer Dabbelt <palmer@sifive.com>
> Sent: Wednesday, June 5, 2019 21:42
> To: julien.grall@arm.com
> Cc: linux-kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> kvmarm@lists.cs.columbia.edu; aou@eecs.berkeley.edu; Gary Guo
> <gary@garyguo.net>; Atish Patra <Atish.Patra@wdc.com>; Christoph Hellwig
> <hch@infradead.org>; Paul Walmsley <paul.walmsley@sifive.com>;
> rppt@linux.ibm.com; linux-riscv@lists.infradead.org; Anup Patel
> <Anup.Patel@wdc.com>; christoffer.dall@arm.com; james.morse@arm.com;
> marc.zyngier@arm.com; julien.thierry@arm.com; suzuki.poulose@arm.com;
> catalin.marinas@arm.com; Will Deacon <will.deacon@arm.com>
> Subject: Re: [PATCH RFC 11/14] arm64: Move the ASID allocator code in a
> separate file
> 
> On Wed, 05 Jun 2019 09:56:03 PDT (-0700), julien.grall@arm.com wrote:
> > Hi,
> >
> > I am CCing RISC-V folks to see if there are an interest to share the code.
> >
> > @RISC-V: I noticed you are discussing about importing a version of ASID
> > allocator in RISC-V. At a first look, the code looks quite similar. Would the
> > library below helps you?
> 
> Thanks!  I didn't look that closely at the original patches because the
> argument against them was just "we don't have any way to test this".
> Unfortunately, we don't have the constraint that there are more ASIDs than
> CPUs
> in the system.  As a result I don't think we can use this ASID allocation
> strategy.
> 
> >
> > Cheers,
> >
> > On 21/03/2019 16:36, Julien Grall wrote:
> >> We will want to re-use the ASID allocator in a separate context (e.g
> >> allocating VMID). So move the code in a new file.
> >>
> >> The function asid_check_context has been moved in the header as a static
> >> inline function because we want to avoid add a branch when checking if the
> >> ASID is still valid.
> >>
> >> Signed-off-by: Julien Grall <julien.grall@arm.com>
> >>
> >> ---
> >>
> >> This code will be used in the virt code for allocating VMID. I am not
> >> entirely sure where to place it. Lib could potentially be a good place but I
> >> am not entirely convinced the algo as it is could be used by other
> >> architecture.
> >>
> >> Looking at x86, it seems that it will not be possible to re-use because
> >> the number of PCID (aka ASID) could be smaller than the number of CPUs.
> >> See commit message 10af6235e0d327d42e1bad974385197817923dc1
> "x86/mm:
> >> Implement PCID based optimization: try to preserve old TLB entries using
> >> PCI".
> >> ---
> >>   arch/arm64/include/asm/asid.h |  77 ++++++++++++++
> >>   arch/arm64/lib/Makefile       |   2 +
> >>   arch/arm64/lib/asid.c         | 185 +++++++++++++++++++++++++++++++++
> >>   arch/arm64/mm/context.c       | 235 +-----------------------------------------
> >>   4 files changed, 267 insertions(+), 232 deletions(-)
> >>   create mode 100644 arch/arm64/include/asm/asid.h
> >>   create mode 100644 arch/arm64/lib/asid.c
> >>
> >> diff --git a/arch/arm64/include/asm/asid.h b/arch/arm64/include/asm/asid.h
> >> new file mode 100644
> >> index 000000000000..bb62b587f37f
> >> --- /dev/null
> >> +++ b/arch/arm64/include/asm/asid.h
> >> @@ -0,0 +1,77 @@
> >> +/* SPDX-License-Identifier: GPL-2.0 */
> >> +#ifndef __ASM_ASM_ASID_H
> >> +#define __ASM_ASM_ASID_H
> >> +
> >> +#include <linux/atomic.h>
> >> +#include <linux/compiler.h>
> >> +#include <linux/cpumask.h>
> >> +#include <linux/percpu.h>
> >> +#include <linux/spinlock.h>
> >> +
> >> +struct asid_info
> >> +{
> >> +	atomic64_t	generation;
> >> +	unsigned long	*map;
> >> +	atomic64_t __percpu	*active;
> >> +	u64 __percpu		*reserved;
> >> +	u32			bits;
> >> +	/* Lock protecting the structure */
> >> +	raw_spinlock_t		lock;
> >> +	/* Which CPU requires context flush on next call */
> >> +	cpumask_t		flush_pending;
> >> +	/* Number of ASID allocated by context (shift value) */
> >> +	unsigned int		ctxt_shift;
> >> +	/* Callback to locally flush the context. */
> >> +	void			(*flush_cpu_ctxt_cb)(void);
> >> +};
> >> +
> >> +#define NUM_ASIDS(info)			(1UL << ((info)->bits))
> >> +#define NUM_CTXT_ASIDS(info)		(NUM_ASIDS(info) >> (info)-
> >ctxt_shift)
> >> +
> >> +#define active_asid(info, cpu)	*per_cpu_ptr((info)->active, cpu)
> >> +
> >> +void asid_new_context(struct asid_info *info, atomic64_t *pasid,
> >> +		      unsigned int cpu);
> >> +
> >> +/*
> >> + * Check the ASID is still valid for the context. If not generate a new ASID.
> >> + *
> >> + * @pasid: Pointer to the current ASID batch
> >> + * @cpu: current CPU ID. Must have been acquired throught get_cpu()
> >> + */
> >> +static inline void asid_check_context(struct asid_info *info,
> >> +				      atomic64_t *pasid, unsigned int cpu)
> >> +{
> >> +	u64 asid, old_active_asid;
> >> +
> >> +	asid = atomic64_read(pasid);
> >> +
> >> +	/*
> >> +	 * The memory ordering here is subtle.
> >> +	 * If our active_asid is non-zero and the ASID matches the current
> >> +	 * generation, then we update the active_asid entry with a relaxed
> >> +	 * cmpxchg. Racing with a concurrent rollover means that either:
> >> +	 *
> >> +	 * - We get a zero back from the cmpxchg and end up waiting on the
> >> +	 *   lock. Taking the lock synchronises with the rollover and so
> >> +	 *   we are forced to see the updated generation.
> >> +	 *
> >> +	 * - We get a valid ASID back from the cmpxchg, which means the
> >> +	 *   relaxed xchg in flush_context will treat us as reserved
> >> +	 *   because atomic RmWs are totally ordered for a given location.
> >> +	 */
> >> +	old_active_asid = atomic64_read(&active_asid(info, cpu));
> >> +	if (old_active_asid &&
> >> +	    !((asid ^ atomic64_read(&info->generation)) >> info->bits) &&
> >> +	    atomic64_cmpxchg_relaxed(&active_asid(info, cpu),
> >> +				     old_active_asid, asid))
> >> +		return;
> >> +
> >> +	asid_new_context(info, pasid, cpu);
> >> +}
> >> +
> >> +int asid_allocator_init(struct asid_info *info,
> >> +			u32 bits, unsigned int asid_per_ctxt,
> >> +			void (*flush_cpu_ctxt_cb)(void));
> >> +
> >> +#endif
> >> diff --git a/arch/arm64/lib/Makefile b/arch/arm64/lib/Makefile
> >> index 5540a1638baf..720df5ee2aa2 100644
> >> --- a/arch/arm64/lib/Makefile
> >> +++ b/arch/arm64/lib/Makefile
> >> @@ -5,6 +5,8 @@ lib-y		:= clear_user.o delay.o
> copy_from_user.o		\
> >>   		   memcmp.o strcmp.o strncmp.o strlen.o strnlen.o	\
> >>   		   strchr.o strrchr.o tishift.o
> >>
> >> +lib-y		+= asid.o
> >> +
> >>   ifeq ($(CONFIG_KERNEL_MODE_NEON), y)
> >>   obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
> >>   CFLAGS_REMOVE_xor-neon.o	+= -mgeneral-regs-only
> >> diff --git a/arch/arm64/lib/asid.c b/arch/arm64/lib/asid.c
> >> new file mode 100644
> >> index 000000000000..72b71bfb32be
> >> --- /dev/null
> >> +++ b/arch/arm64/lib/asid.c
> >> @@ -0,0 +1,185 @@
> >> +// SPDX-License-Identifier: GPL-2.0
> >> +/*
> >> + * Generic ASID allocator.
> >> + *
> >> + * Based on arch/arm/mm/context.c
> >> + *
> >> + * Copyright (C) 2002-2003 Deep Blue Solutions Ltd, all rights reserved.
> >> + * Copyright (C) 2012 ARM Ltd.
> >> + */
> >> +
> >> +#include <linux/slab.h>
> >> +
> >> +#include <asm/asid.h>
> >> +
> >> +#define reserved_asid(info, cpu) *per_cpu_ptr((info)->reserved, cpu)
> >> +
> >> +#define ASID_MASK(info)			(~GENMASK((info)->bits - 1, 0))
> >> +#define ASID_FIRST_VERSION(info)	(1UL << ((info)->bits))
> >> +
> >> +#define asid2idx(info, asid)		(((asid) & ~ASID_MASK(info)) >> (info)-
> >ctxt_shift)
> >> +#define idx2asid(info, idx)		(((idx) << (info)->ctxt_shift) &
> ~ASID_MASK(info))
> >> +
> >> +static void flush_context(struct asid_info *info)
> >> +{
> >> +	int i;
> >> +	u64 asid;
> >> +
> >> +	/* Update the list of reserved ASIDs and the ASID bitmap. */
> >> +	bitmap_clear(info->map, 0, NUM_CTXT_ASIDS(info));
> >> +
> >> +	for_each_possible_cpu(i) {
> >> +		asid = atomic64_xchg_relaxed(&active_asid(info, i), 0);
> >> +		/*
> >> +		 * If this CPU has already been through a
> >> +		 * rollover, but hasn't run another task in
> >> +		 * the meantime, we must preserve its reserved
> >> +		 * ASID, as this is the only trace we have of
> >> +		 * the process it is still running.
> >> +		 */
> >> +		if (asid == 0)
> >> +			asid = reserved_asid(info, i);
> >> +		__set_bit(asid2idx(info, asid), info->map);
> >> +		reserved_asid(info, i) = asid;
> >> +	}
> >> +
> >> +	/*
> >> +	 * Queue a TLB invalidation for each CPU to perform on next
> >> +	 * context-switch
> >> +	 */
> >> +	cpumask_setall(&info->flush_pending);
> >> +}
> >> +
> >> +static bool check_update_reserved_asid(struct asid_info *info, u64 asid,
> >> +				       u64 newasid)
> >> +{
> >> +	int cpu;
> >> +	bool hit = false;
> >> +
> >> +	/*
> >> +	 * Iterate over the set of reserved ASIDs looking for a match.
> >> +	 * If we find one, then we can update our mm to use newasid
> >> +	 * (i.e. the same ASID in the current generation) but we can't
> >> +	 * exit the loop early, since we need to ensure that all copies
> >> +	 * of the old ASID are updated to reflect the mm. Failure to do
> >> +	 * so could result in us missing the reserved ASID in a future
> >> +	 * generation.
> >> +	 */
> >> +	for_each_possible_cpu(cpu) {
> >> +		if (reserved_asid(info, cpu) == asid) {
> >> +			hit = true;
> >> +			reserved_asid(info, cpu) = newasid;
> >> +		}
> >> +	}
> >> +
> >> +	return hit;
> >> +}
> >> +
> >> +static u64 new_context(struct asid_info *info, atomic64_t *pasid)
> >> +{
> >> +	static u32 cur_idx = 1;
> >> +	u64 asid = atomic64_read(pasid);
> >> +	u64 generation = atomic64_read(&info->generation);
> >> +
> >> +	if (asid != 0) {
> >> +		u64 newasid = generation | (asid & ~ASID_MASK(info));
> >> +
> >> +		/*
> >> +		 * If our current ASID was active during a rollover, we
> >> +		 * can continue to use it and this was just a false alarm.
> >> +		 */
> >> +		if (check_update_reserved_asid(info, asid, newasid))
> >> +			return newasid;
> >> +
> >> +		/*
> >> +		 * We had a valid ASID in a previous life, so try to re-use
> >> +		 * it if possible.
> >> +		 */
> >> +		if (!__test_and_set_bit(asid2idx(info, asid), info->map))
> >> +			return newasid;
> >> +	}
> >> +
> >> +	/*
> >> +	 * Allocate a free ASID. If we can't find one, take a note of the
> >> +	 * currently active ASIDs and mark the TLBs as requiring flushes.  We
> >> +	 * always count from ASID #2 (index 1), as we use ASID #0 when setting
> >> +	 * a reserved TTBR0 for the init_mm and we allocate ASIDs in even/odd
> >> +	 * pairs.
> >> +	 */
> >> +	asid = find_next_zero_bit(info->map, NUM_CTXT_ASIDS(info), cur_idx);
> >> +	if (asid != NUM_CTXT_ASIDS(info))
> >> +		goto set_asid;
> >> +
> >> +	/* We're out of ASIDs, so increment the global generation count */
> >> +	generation = atomic64_add_return_relaxed(ASID_FIRST_VERSION(info),
> >> +						 &info->generation);
> >> +	flush_context(info);
> >> +
> >> +	/* We have more ASIDs than CPUs, so this will always succeed */
> >> +	asid = find_next_zero_bit(info->map, NUM_CTXT_ASIDS(info), 1);
> >> +
> >> +set_asid:
> >> +	__set_bit(asid, info->map);
> >> +	cur_idx = asid;
> >> +	return idx2asid(info, asid) | generation;
> >> +}
> >> +
> >> +/*
> >> + * Generate a new ASID for the context.
> >> + *
> >> + * @pasid: Pointer to the current ASID batch allocated. It will be updated
> >> + * with the new ASID batch.
> >> + * @cpu: current CPU ID. Must have been acquired through get_cpu()
> >> + */
> >> +void asid_new_context(struct asid_info *info, atomic64_t *pasid,
> >> +		      unsigned int cpu)
> >> +{
> >> +	unsigned long flags;
> >> +	u64 asid;
> >> +
> >> +	raw_spin_lock_irqsave(&info->lock, flags);
> >> +	/* Check that our ASID belongs to the current generation. */
> >> +	asid = atomic64_read(pasid);
> >> +	if ((asid ^ atomic64_read(&info->generation)) >> info->bits) {
> >> +		asid = new_context(info, pasid);
> >> +		atomic64_set(pasid, asid);
> >> +	}
> >> +
> >> +	if (cpumask_test_and_clear_cpu(cpu, &info->flush_pending))
> >> +		info->flush_cpu_ctxt_cb();
> >> +
> >> +	atomic64_set(&active_asid(info, cpu), asid);
> >> +	raw_spin_unlock_irqrestore(&info->lock, flags);
> >> +}
> >> +
> >> +/*
> >> + * Initialize the ASID allocator
> >> + *
> >> + * @info: Pointer to the asid allocator structure
> >> + * @bits: Number of ASIDs available
> >> + * @asid_per_ctxt: Number of ASIDs to allocate per-context. ASIDs are
> >> + * allocated contiguously for a given context. This value should be a power
> of
> >> + * 2.
> >> + */
> >> +int asid_allocator_init(struct asid_info *info,
> >> +			u32 bits, unsigned int asid_per_ctxt,
> >> +			void (*flush_cpu_ctxt_cb)(void))
> >> +{
> >> +	info->bits = bits;
> >> +	info->ctxt_shift = ilog2(asid_per_ctxt);
> >> +	info->flush_cpu_ctxt_cb = flush_cpu_ctxt_cb;
> >> +	/*
> >> +	 * Expect allocation after rollover to fail if we don't have at least
> >> +	 * one more ASID than CPUs. ASID #0 is always reserved.
> >> +	 */
> >> +	WARN_ON(NUM_CTXT_ASIDS(info) - 1 <= num_possible_cpus());
> >> +	atomic64_set(&info->generation, ASID_FIRST_VERSION(info));
> >> +	info->map = kcalloc(BITS_TO_LONGS(NUM_CTXT_ASIDS(info)),
> >> +			    sizeof(*info->map), GFP_KERNEL);
> >> +	if (!info->map)
> >> +		return -ENOMEM;
> >> +
> >> +	raw_spin_lock_init(&info->lock);
> >> +
> >> +	return 0;
> >> +}
> >> diff --git a/arch/arm64/mm/context.c b/arch/arm64/mm/context.c
> >> index 678a57b77c91..95ee7711a2ef 100644
> >> --- a/arch/arm64/mm/context.c
> >> +++ b/arch/arm64/mm/context.c
> >> @@ -22,47 +22,22 @@
> >>   #include <linux/slab.h>
> >>   #include <linux/mm.h>
> >>
> >> +#include <asm/asid.h>
> >>   #include <asm/cpufeature.h>
> >>   #include <asm/mmu_context.h>
> >>   #include <asm/smp.h>
> >>   #include <asm/tlbflush.h>
> >>
> >> -struct asid_info
> >> -{
> >> -	atomic64_t	generation;
> >> -	unsigned long	*map;
> >> -	atomic64_t __percpu	*active;
> >> -	u64 __percpu		*reserved;
> >> -	u32			bits;
> >> -	raw_spinlock_t		lock;
> >> -	/* Which CPU requires context flush on next call */
> >> -	cpumask_t		flush_pending;
> >> -	/* Number of ASID allocated by context (shift value) */
> >> -	unsigned int		ctxt_shift;
> >> -	/* Callback to locally flush the context. */
> >> -	void			(*flush_cpu_ctxt_cb)(void);
> >> -} asid_info;
> >> -
> >> -#define active_asid(info, cpu)	*per_cpu_ptr((info)->active, cpu)
> >> -#define reserved_asid(info, cpu) *per_cpu_ptr((info)->reserved, cpu)
> >> -
> >>   static DEFINE_PER_CPU(atomic64_t, active_asids);
> >>   static DEFINE_PER_CPU(u64, reserved_asids);
> >>
> >> -#define ASID_MASK(info)			(~GENMASK((info)->bits - 1, 0))
> >> -#define NUM_ASIDS(info)			(1UL << ((info)->bits))
> >> -
> >> -#define ASID_FIRST_VERSION(info)	NUM_ASIDS(info)
> >> -
> >>   #ifdef CONFIG_UNMAP_KERNEL_AT_EL0
> >>   #define ASID_PER_CONTEXT		2
> >>   #else
> >>   #define ASID_PER_CONTEXT		1
> >>   #endif
> >>
> >> -#define NUM_CTXT_ASIDS(info)		(NUM_ASIDS(info) >> (info)-
> >ctxt_shift)
> >> -#define asid2idx(info, asid)		(((asid) & ~ASID_MASK(info)) >> (info)-
> >ctxt_shift)
> >> -#define idx2asid(info, idx)		(((idx) << (info)->ctxt_shift) &
> ~ASID_MASK(info))
> >> +struct asid_info asid_info;
> >>
> >>   /* Get the ASIDBits supported by the current CPU */
> >>   static u32 get_cpu_asid_bits(void)
> >> @@ -102,178 +77,6 @@ void verify_cpu_asid_bits(void)
> >>   	}
> >>   }
> >>
> >> -static void flush_context(struct asid_info *info)
> >> -{
> >> -	int i;
> >> -	u64 asid;
> >> -
> >> -	/* Update the list of reserved ASIDs and the ASID bitmap. */
> >> -	bitmap_clear(info->map, 0, NUM_CTXT_ASIDS(info));
> >> -
> >> -	for_each_possible_cpu(i) {
> >> -		asid = atomic64_xchg_relaxed(&active_asid(info, i), 0);
> >> -		/*
> >> -		 * If this CPU has already been through a
> >> -		 * rollover, but hasn't run another task in
> >> -		 * the meantime, we must preserve its reserved
> >> -		 * ASID, as this is the only trace we have of
> >> -		 * the process it is still running.
> >> -		 */
> >> -		if (asid == 0)
> >> -			asid = reserved_asid(info, i);
> >> -		__set_bit(asid2idx(info, asid), info->map);
> >> -		reserved_asid(info, i) = asid;
> >> -	}
> >> -
> >> -	/*
> >> -	 * Queue a TLB invalidation for each CPU to perform on next
> >> -	 * context-switch
> >> -	 */
> >> -	cpumask_setall(&info->flush_pending);
> >> -}
> >> -
> >> -static bool check_update_reserved_asid(struct asid_info *info, u64 asid,
> >> -				       u64 newasid)
> >> -{
> >> -	int cpu;
> >> -	bool hit = false;
> >> -
> >> -	/*
> >> -	 * Iterate over the set of reserved ASIDs looking for a match.
> >> -	 * If we find one, then we can update our mm to use newasid
> >> -	 * (i.e. the same ASID in the current generation) but we can't
> >> -	 * exit the loop early, since we need to ensure that all copies
> >> -	 * of the old ASID are updated to reflect the mm. Failure to do
> >> -	 * so could result in us missing the reserved ASID in a future
> >> -	 * generation.
> >> -	 */
> >> -	for_each_possible_cpu(cpu) {
> >> -		if (reserved_asid(info, cpu) == asid) {
> >> -			hit = true;
> >> -			reserved_asid(info, cpu) = newasid;
> >> -		}
> >> -	}
> >> -
> >> -	return hit;
> >> -}
> >> -
> >> -static u64 new_context(struct asid_info *info, atomic64_t *pasid)
> >> -{
> >> -	static u32 cur_idx = 1;
> >> -	u64 asid = atomic64_read(pasid);
> >> -	u64 generation = atomic64_read(&info->generation);
> >> -
> >> -	if (asid != 0) {
> >> -		u64 newasid = generation | (asid & ~ASID_MASK(info));
> >> -
> >> -		/*
> >> -		 * If our current ASID was active during a rollover, we
> >> -		 * can continue to use it and this was just a false alarm.
> >> -		 */
> >> -		if (check_update_reserved_asid(info, asid, newasid))
> >> -			return newasid;
> >> -
> >> -		/*
> >> -		 * We had a valid ASID in a previous life, so try to re-use
> >> -		 * it if possible.
> >> -		 */
> >> -		if (!__test_and_set_bit(asid2idx(info, asid), info->map))
> >> -			return newasid;
> >> -	}
> >> -
> >> -	/*
> >> -	 * Allocate a free ASID. If we can't find one, take a note of the
> >> -	 * currently active ASIDs and mark the TLBs as requiring flushes.  We
> >> -	 * always count from ASID #2 (index 1), as we use ASID #0 when setting
> >> -	 * a reserved TTBR0 for the init_mm and we allocate ASIDs in even/odd
> >> -	 * pairs.
> >> -	 */
> >> -	asid = find_next_zero_bit(info->map, NUM_CTXT_ASIDS(info), cur_idx);
> >> -	if (asid != NUM_CTXT_ASIDS(info))
> >> -		goto set_asid;
> >> -
> >> -	/* We're out of ASIDs, so increment the global generation count */
> >> -	generation = atomic64_add_return_relaxed(ASID_FIRST_VERSION(info),
> >> -						 &info->generation);
> >> -	flush_context(info);
> >> -
> >> -	/* We have more ASIDs than CPUs, so this will always succeed */
> >> -	asid = find_next_zero_bit(info->map, NUM_CTXT_ASIDS(info), 1);
> >> -
> >> -set_asid:
> >> -	__set_bit(asid, info->map);
> >> -	cur_idx = asid;
> >> -	return idx2asid(info, asid) | generation;
> >> -}
> >> -
> >> -static void asid_new_context(struct asid_info *info, atomic64_t *pasid,
> >> -			     unsigned int cpu);
> >> -
> >> -/*
> >> - * Check the ASID is still valid for the context. If not generate a new ASID.
> >> - *
> >> - * @pasid: Pointer to the current ASID batch
> >> - * @cpu: current CPU ID. Must have been acquired throught get_cpu()
> >> - */
> >> -static void asid_check_context(struct asid_info *info,
> >> -			       atomic64_t *pasid, unsigned int cpu)
> >> -{
> >> -	u64 asid, old_active_asid;
> >> -
> >> -	asid = atomic64_read(pasid);
> >> -
> >> -	/*
> >> -	 * The memory ordering here is subtle.
> >> -	 * If our active_asid is non-zero and the ASID matches the current
> >> -	 * generation, then we update the active_asid entry with a relaxed
> >> -	 * cmpxchg. Racing with a concurrent rollover means that either:
> >> -	 *
> >> -	 * - We get a zero back from the cmpxchg and end up waiting on the
> >> -	 *   lock. Taking the lock synchronises with the rollover and so
> >> -	 *   we are forced to see the updated generation.
> >> -	 *
> >> -	 * - We get a valid ASID back from the cmpxchg, which means the
> >> -	 *   relaxed xchg in flush_context will treat us as reserved
> >> -	 *   because atomic RmWs are totally ordered for a given location.
> >> -	 */
> >> -	old_active_asid = atomic64_read(&active_asid(info, cpu));
> >> -	if (old_active_asid &&
> >> -	    !((asid ^ atomic64_read(&info->generation)) >> info->bits) &&
> >> -	    atomic64_cmpxchg_relaxed(&active_asid(info, cpu),
> >> -				     old_active_asid, asid))
> >> -		return;
> >> -
> >> -	asid_new_context(info, pasid, cpu);
> >> -}
> >> -
> >> -/*
> >> - * Generate a new ASID for the context.
> >> - *
> >> - * @pasid: Pointer to the current ASID batch allocated. It will be updated
> >> - * with the new ASID batch.
> >> - * @cpu: current CPU ID. Must have been acquired through get_cpu()
> >> - */
> >> -static void asid_new_context(struct asid_info *info, atomic64_t *pasid,
> >> -			     unsigned int cpu)
> >> -{
> >> -	unsigned long flags;
> >> -	u64 asid;
> >> -
> >> -	raw_spin_lock_irqsave(&info->lock, flags);
> >> -	/* Check that our ASID belongs to the current generation. */
> >> -	asid = atomic64_read(pasid);
> >> -	if ((asid ^ atomic64_read(&info->generation)) >> info->bits) {
> >> -		asid = new_context(info, pasid);
> >> -		atomic64_set(pasid, asid);
> >> -	}
> >> -
> >> -	if (cpumask_test_and_clear_cpu(cpu, &info->flush_pending))
> >> -		info->flush_cpu_ctxt_cb();
> >> -
> >> -	atomic64_set(&active_asid(info, cpu), asid);
> >> -	raw_spin_unlock_irqrestore(&info->lock, flags);
> >> -}
> >> -
> >>   void check_and_switch_context(struct mm_struct *mm, unsigned int cpu)
> >>   {
> >>   	if (system_supports_cnp())
> >> @@ -305,38 +108,6 @@ static void asid_flush_cpu_ctxt(void)
> >>   	local_flush_tlb_all();
> >>   }
> >>
> >> -/*
> >> - * Initialize the ASID allocator
> >> - *
> >> - * @info: Pointer to the asid allocator structure
> >> - * @bits: Number of ASIDs available
> >> - * @asid_per_ctxt: Number of ASIDs to allocate per-context. ASIDs are
> >> - * allocated contiguously for a given context. This value should be a power
> of
> >> - * 2.
> >> - */
> >> -static int asid_allocator_init(struct asid_info *info,
> >> -			       u32 bits, unsigned int asid_per_ctxt,
> >> -			       void (*flush_cpu_ctxt_cb)(void))
> >> -{
> >> -	info->bits = bits;
> >> -	info->ctxt_shift = ilog2(asid_per_ctxt);
> >> -	info->flush_cpu_ctxt_cb = flush_cpu_ctxt_cb;
> >> -	/*
> >> -	 * Expect allocation after rollover to fail if we don't have at least
> >> -	 * one more ASID than CPUs. ASID #0 is always reserved.
> >> -	 */
> >> -	WARN_ON(NUM_CTXT_ASIDS(info) - 1 <= num_possible_cpus());
> >> -	atomic64_set(&info->generation, ASID_FIRST_VERSION(info));
> >> -	info->map = kcalloc(BITS_TO_LONGS(NUM_CTXT_ASIDS(info)),
> >> -			    sizeof(*info->map), GFP_KERNEL);
> >> -	if (!info->map)
> >> -		return -ENOMEM;
> >> -
> >> -	raw_spin_lock_init(&info->lock);
> >> -
> >> -	return 0;
> >> -}
> >> -
> >>   static int asids_init(void)
> >>   {
> >>   	u32 bits = get_cpu_asid_bits();
> >> @@ -344,7 +115,7 @@ static int asids_init(void)
> >>   	if (!asid_allocator_init(&asid_info, bits, ASID_PER_CONTEXT,
> >>   				 asid_flush_cpu_ctxt))
> >>   		panic("Unable to initialize ASID allocator for %lu ASIDs\n",
> >> -		      1UL << bits);
> >> +		      NUM_ASIDS(&asid_info));
> >>
> >>   	asid_info.active = &active_asids;
> >>   	asid_info.reserved = &reserved_asids;
> >>
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
