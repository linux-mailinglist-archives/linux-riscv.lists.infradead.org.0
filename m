Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 824F913DD2
	for <lists+linux-riscv@lfdr.de>; Sun,  5 May 2019 08:20:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TulVgcV8Fla70gdQypbEwUmkcHUMQ779Zs+n7gjOJNA=; b=lln7wiIcQJ8Uwp
	b9cHVkywbc4EDYpumatmIHf3A+93DXZCbte4wGaZhFszk4ovHkmuedaU7vMVbfXzPuTqu+stNQHVw
	UsSvTZVaJTgO+0euc4gzWL4ldkKMGq2jD2AI4m/PU+0kp2opN9Mhdi1AyFNlaInTRvQ5u0BG2qcoc
	iIxPljOCR9eL/k26i/IQ8OKp/Rya120xoIFldTNYTEmrq1RGm7BUmgfkTugq75gUXBoWfwH+KmNbR
	DazeXr6mLOp6AvGk4cTpdHtKOgujGOSGwc24hSsUDDQXbM0oI7C/vCkLLA2cFUlRjGtRD4S39TLf3
	MxQkM2bA1R5blIVIv3eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNAVh-0007cS-NX; Sun, 05 May 2019 06:20:29 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNAVR-0007Qg-OC
 for linux-riscv@lists.infradead.org; Sun, 05 May 2019 06:20:15 +0000
Received: from pps.filterd (m0098421.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x45673uc014218
 for <linux-riscv@lists.infradead.org>; Sun, 5 May 2019 02:20:12 -0400
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2s9r5hbwcm-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-riscv@lists.infradead.org>; Sun, 05 May 2019 02:20:12 -0400
Received: from localhost
 by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-riscv@lists.infradead.org> from <rppt@linux.ibm.com>;
 Sun, 5 May 2019 07:20:10 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
 by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Sun, 5 May 2019 07:20:02 +0100
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x456K1TN53477458
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 5 May 2019 06:20:01 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 12B4411C04C;
 Sun,  5 May 2019 06:20:01 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id CC1BF11C04A;
 Sun,  5 May 2019 06:19:58 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.112])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Sun,  5 May 2019 06:19:58 +0000 (GMT)
Date: Sun, 5 May 2019 09:19:57 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 04/15] arm64: switch to generic version of pte allocation
References: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
 <1556810922-20248-5-git-send-email-rppt@linux.ibm.com>
 <20190503100508.GB47811@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503100508.GB47811@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19050506-4275-0000-0000-0000033186BE
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050506-4276-0000-0000-00003840EB99
Message-Id: <20190505061956.GE15755@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-05_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905050056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_232014_015074_51C7E887 
X-CRM114-Status: GOOD (  32.19  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Michal Hocko <mhocko@suse.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>, linux-mips@vger.kernel.org,
 Guo Ren <guoren@kernel.org>, linux-hexagon@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-arch@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Arnd Bergmann <arnd@arndb.de>,
 linux-um@lists.infradead.org, Richard Weinberger <richard@nod.at>,
 linux-m68k@lists.linux-m68k.org, Greentime Hu <green.hu@gmail.com>,
 nios2-dev@lists.rocketboards.org, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Richard Kuo <rkuo@codeaurora.org>,
 Paul Burton <paul.burton@mips.com>, linux-alpha@vger.kernel.org,
 Ley Foon Tan <lftan@altera.com>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 11:05:09AM +0100, Mark Rutland wrote:
> Hi,
> 
> On Thu, May 02, 2019 at 06:28:31PM +0300, Mike Rapoport wrote:
> > The PTE allocations in arm64 are identical to the generic ones modulo the
> > GFP flags.
> > 
> > Using the generic pte_alloc_one() functions ensures that the user page
> > tables are allocated with __GFP_ACCOUNT set.
> > 
> > The arm64 definition of PGALLOC_GFP is removed and replaced with
> > GFP_PGTABLE_USER for p[gum]d_alloc_one() and for KVM memory cache.
> > 
> > The mappings created with create_pgd_mapping() are now using
> > GFP_PGTABLE_KERNEL.
> > 
> > The conversion to the generic version of pte_free_kernel() removes the NULL
> > check for pte.
> > 
> > The pte_free() version on arm64 is identical to the generic one and
> > can be simply dropped.
> > 
> > Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> > ---
> >  arch/arm64/include/asm/pgalloc.h | 43 ++++------------------------------------
> >  arch/arm64/mm/mmu.c              |  2 +-
> >  arch/arm64/mm/pgd.c              |  4 ++--
> >  virt/kvm/arm/mmu.c               |  2 +-
> >  4 files changed, 8 insertions(+), 43 deletions(-)
> 
> [...]
> 
> > diff --git a/arch/arm64/mm/pgd.c b/arch/arm64/mm/pgd.c
> > index 289f911..2ef1a53 100644
> > --- a/arch/arm64/mm/pgd.c
> > +++ b/arch/arm64/mm/pgd.c
> > @@ -31,9 +31,9 @@ static struct kmem_cache *pgd_cache __ro_after_init;
> >  pgd_t *pgd_alloc(struct mm_struct *mm)
> >  {
> >  	if (PGD_SIZE == PAGE_SIZE)
> > -		return (pgd_t *)__get_free_page(PGALLOC_GFP);
> > +		return (pgd_t *)__get_free_page(GFP_PGTABLE_USER);
> >  	else
> > -		return kmem_cache_alloc(pgd_cache, PGALLOC_GFP);
> > +		return kmem_cache_alloc(pgd_cache, GFP_PGTABLE_USER);
> >  }
> 
> In efi_virtmap_init() we use pgd_alloc() to allocate a pgd for EFI
> runtime services, which we map with a special kernel page table.
> 
> I'm not sure if accounting that is problematic, as it's allocated in a
> kernel thread off the back of an early_initcall.

The accounting bypasses kernel threads so there should be no problem.
 
> Just to check, Is that sound, or do we need a pgd_alloc_kernel()?
> 
> Thanks,
> Mark.
> 

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
