Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C60139E2D4
	for <lists+linux-riscv@lfdr.de>; Tue, 27 Aug 2019 10:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQL0ireUDo+NM1ODdnDKSf2hlSOthbVQFhcmF5fyxTM=; b=ciAHwwYAJ+kx2A
	i1DjwI/o7XqzkGmPex5MddsOOBCIaW9dHgS5+3ZLt/LrN6LWuU+uQOLa4Z8DVI3kyvsx/MlSbIut3
	miu1fh/54/ik02OtdSCtINdeHf8chhO6MlRfVzX5IWnNtGbMboC7yFJbJtML29qjKlpXP4JnUdPYN
	WJjzk4bJAaThEk3ttWFqOVQyOCnSK0NlEXCoYHwdwPYTpGUhPxwguVJtyH3KSsNfIogNH6tCoU295
	d2gGXeVGx2Vrln+EgG2F7mwaCW5q7wJkHCYRXKg+9GjG+PdxzhGv48W05IsmwQeHi2YwAM3U/iy+y
	VjzjhrJ9uLDXT7uDVgiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2WyZ-0006gC-9h; Tue, 27 Aug 2019 08:37:15 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2WyV-0006fr-Lw
 for linux-riscv@lists.infradead.org; Tue, 27 Aug 2019 08:37:13 +0000
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7R8YBUp076526
 for <linux-riscv@lists.infradead.org>; Tue, 27 Aug 2019 04:37:11 -0400
Received: from e06smtp05.uk.ibm.com (e06smtp05.uk.ibm.com [195.75.94.101])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2umxkvw4f8-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-riscv@lists.infradead.org>; Tue, 27 Aug 2019 04:37:10 -0400
Received: from localhost
 by e06smtp05.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-riscv@lists.infradead.org> from <rppt@linux.ibm.com>;
 Tue, 27 Aug 2019 09:37:08 +0100
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp05.uk.ibm.com (192.168.101.135) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 27 Aug 2019 09:37:04 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7R8b3Uc56688772
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Aug 2019 08:37:03 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 7ADCA11C05B;
 Tue, 27 Aug 2019 08:37:03 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 718F811C04A;
 Tue, 27 Aug 2019 08:37:02 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.59])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Tue, 27 Aug 2019 08:37:02 +0000 (GMT)
Date: Tue, 27 Aug 2019 11:37:00 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Anup Patel <anup@brainfault.org>
Subject: Re: [RFC PATCH 1/2] RISC-V: Mark existing SBI as legacy SBI.
References: <20190826233256.32383-1-atish.patra@wdc.com>
 <20190826233256.32383-2-atish.patra@wdc.com>
 <20190827075136.GC682@rapoport-lnx>
 <CAAhSdy0zOtHftesYW9uuM0gjsOcvyhfuBETbtKaR2Kc1-_sCAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhSdy0zOtHftesYW9uuM0gjsOcvyhfuBETbtKaR2Kc1-_sCAQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19082708-0020-0000-0000-000003646757
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19082708-0021-0000-0000-000021B9B2ED
Message-Id: <20190827083700.GF682@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-27_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908270096
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_013711_720019_2FF51825 
X-CRM114-Status: GOOD (  26.94  )
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
 Atish Patra <atish.patra@wdc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 01:58:03PM +0530, Anup Patel wrote:
> On Tue, Aug 27, 2019 at 1:21 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
> >
> > On Mon, Aug 26, 2019 at 04:32:55PM -0700, Atish Patra wrote:
> > > As per the new SBI specification, current SBI implementation is
> > > defined as legacy and will be removed/replaced in future.
> > >
> > > Rename existing implementation to reflect that. This patch is just
> > > a preparatory patch for SBI v0.2 and doesn't introduce any functional
> > > changes.
> > >
> > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > > ---
> > >  arch/riscv/include/asm/sbi.h | 61 +++++++++++++++++++-----------------
> > >  1 file changed, 33 insertions(+), 28 deletions(-)
> > >
> > > diff --git a/arch/riscv/include/asm/sbi.h b/arch/riscv/include/asm/sbi.h
> > > index 21134b3ef404..7f5ecaaaa0d7 100644
> > > --- a/arch/riscv/include/asm/sbi.h
> > > +++ b/arch/riscv/include/asm/sbi.h
> > > @@ -8,17 +8,18 @@
> > >
> > >  #include <linux/types.h>
> > >
> > > -#define SBI_SET_TIMER 0
> > > -#define SBI_CONSOLE_PUTCHAR 1
> > > -#define SBI_CONSOLE_GETCHAR 2
> > > -#define SBI_CLEAR_IPI 3
> > > -#define SBI_SEND_IPI 4
> > > -#define SBI_REMOTE_FENCE_I 5
> > > -#define SBI_REMOTE_SFENCE_VMA 6
> > > -#define SBI_REMOTE_SFENCE_VMA_ASID 7
> > > -#define SBI_SHUTDOWN 8
> > > -
> > > -#define SBI_CALL(which, arg0, arg1, arg2, arg3) ({           \
> > > +
> > > +#define SBI_EXT_LEGACY_SET_TIMER 0x0
> > > +#define SBI_EXT_LEGACY_CONSOLE_PUTCHAR 0x1
> > > +#define SBI_EXT_LEGACY_CONSOLE_GETCHAR 0x2
> > > +#define SBI_EXT_LEGACY_CLEAR_IPI 0x3
> > > +#define SBI_EXT_LEGACY_SEND_IPI 0x4
> > > +#define SBI_EXT_LEGACY_REMOTE_FENCE_I 0x5
> > > +#define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA 0x6
> > > +#define SBI_EXT_LEGACY_REMOTE_SFENCE_VMA_ASID 0x7
> > > +#define SBI_EXT_LEGACY_SHUTDOWN 0x8
> >
> > I can't say I'm closely following RISC-V development, but what will happen
> > when SBI v0.3 will come out and will render v0.2 legacy?
> > Won't we need another similar renaming then?
> 
> Going forward with SBI v0.3 and higher, we won't see any calling
> convention changes.
> 
> The SBI spec will be maintained and improved by RISC-V UNIX
> platform spec working group.
> 
> My best guess is that, all future SBI releases (v0.3 or higher) will
> include more optional SBI extensions (hart hotplug, power management, etc).

Thanks for the clarification!
 
> Regards,
> Anup
> 
> >
> > > +#define SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3) ({             \
> > >       register uintptr_t a0 asm ("a0") = (uintptr_t)(arg0);   \
> > >       register uintptr_t a1 asm ("a1") = (uintptr_t)(arg1);   \
> > >       register uintptr_t a2 asm ("a2") = (uintptr_t)(arg2);   \
> > > @@ -32,58 +33,61 @@
> > >  })
> > >
> > >  /* Lazy implementations until SBI is finalized */
> > > -#define SBI_CALL_0(which) SBI_CALL(which, 0, 0, 0, 0)
> > > -#define SBI_CALL_1(which, arg0) SBI_CALL(which, arg0, 0, 0, 0)
> > > -#define SBI_CALL_2(which, arg0, arg1) SBI_CALL(which, arg0, arg1, 0, 0)
> > > -#define SBI_CALL_3(which, arg0, arg1, arg2) \
> > > -             SBI_CALL(which, arg0, arg1, arg2, 0)
> > > -#define SBI_CALL_4(which, arg0, arg1, arg2, arg3) \
> > > -             SBI_CALL(which, arg0, arg1, arg2, arg3)
> > > +#define SBI_CALL_LEGACY_0(which) SBI_CALL_LEGACY(which, 0, 0, 0, 0)
> > > +#define SBI_CALL_LEGACY_1(which, arg0) SBI_CALL_LEGACY(which, arg0, 0, 0, 0)
> > > +#define SBI_CALL_LEGACY_2(which, arg0, arg1) \
> > > +             SBI_CALL_LEGACY(which, arg0, arg1, 0, 0)
> > > +#define SBI_CALL_LEGACY_3(which, arg0, arg1, arg2) \
> > > +             SBI_CALL_LEGACY(which, arg0, arg1, arg2, 0)
> > > +#define SBI_CALL_LEGACY_4(which, arg0, arg1, arg2, arg3) \
> > > +             SBI_CALL_LEGACY(which, arg0, arg1, arg2, arg3)
> > >
> > >  static inline void sbi_console_putchar(int ch)
> > >  {
> > > -     SBI_CALL_1(SBI_CONSOLE_PUTCHAR, ch);
> > > +     SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_CONSOLE_PUTCHAR, ch);
> > >  }
> > >
> > >  static inline int sbi_console_getchar(void)
> > >  {
> > > -     return SBI_CALL_0(SBI_CONSOLE_GETCHAR);
> > > +     return SBI_CALL_LEGACY_0(SBI_EXT_LEGACY_CONSOLE_GETCHAR);
> > >  }
> > >
> > >  static inline void sbi_set_timer(uint64_t stime_value)
> > >  {
> > >  #if __riscv_xlen == 32
> > > -     SBI_CALL_2(SBI_SET_TIMER, stime_value, stime_value >> 32);
> > > +     SBI_CALL_LEGACY_2(SBI_EXT_LEGACY_SET_TIMER, stime_value,
> > > +                       stime_value >> 32);
> > >  #else
> > > -     SBI_CALL_1(SBI_SET_TIMER, stime_value);
> > > +     SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_SET_TIMER, stime_value);
> > >  #endif
> > >  }
> > >
> > >  static inline void sbi_shutdown(void)
> > >  {
> > > -     SBI_CALL_0(SBI_SHUTDOWN);
> > > +     SBI_CALL_LEGACY_0(SBI_EXT_LEGACY_SHUTDOWN);
> > >  }
> > >
> > >  static inline void sbi_clear_ipi(void)
> > >  {
> > > -     SBI_CALL_0(SBI_CLEAR_IPI);
> > > +     SBI_CALL_LEGACY_0(SBI_EXT_LEGACY_CLEAR_IPI);
> > >  }
> > >
> > >  static inline void sbi_send_ipi(const unsigned long *hart_mask)
> > >  {
> > > -     SBI_CALL_1(SBI_SEND_IPI, hart_mask);
> > > +     SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_SEND_IPI, hart_mask);
> > >  }
> > >
> > >  static inline void sbi_remote_fence_i(const unsigned long *hart_mask)
> > >  {
> > > -     SBI_CALL_1(SBI_REMOTE_FENCE_I, hart_mask);
> > > +     SBI_CALL_LEGACY_1(SBI_EXT_LEGACY_REMOTE_FENCE_I, hart_mask);
> > >  }
> > >
> > >  static inline void sbi_remote_sfence_vma(const unsigned long *hart_mask,
> > >                                        unsigned long start,
> > >                                        unsigned long size)
> > >  {
> > > -     SBI_CALL_3(SBI_REMOTE_SFENCE_VMA, hart_mask, start, size);
> > > +     SBI_CALL_LEGACY_3(SBI_EXT_LEGACY_REMOTE_SFENCE_VMA, hart_mask,
> > > +                       start, size);
> > >  }
> > >
> > >  static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> > > @@ -91,7 +95,8 @@ static inline void sbi_remote_sfence_vma_asid(const unsigned long *hart_mask,
> > >                                             unsigned long size,
> > >                                             unsigned long asid)
> > >  {
> > > -     SBI_CALL_4(SBI_REMOTE_SFENCE_VMA_ASID, hart_mask, start, size, asid);
> > > +     SBI_CALL_LEGACY_4(SBI_EXT_LEGACY_REMOTE_SFENCE_VMA_ASID, hart_mask,
> > > +                       start, size, asid);
> > >  }
> > >
> > >  #endif
> > > --
> > > 2.21.0
> > >
> > >
> > > _______________________________________________
> > > linux-riscv mailing list
> > > linux-riscv@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-riscv
> > >
> >
> > --
> > Sincerely yours,
> > Mike.
> >
> >
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv
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
