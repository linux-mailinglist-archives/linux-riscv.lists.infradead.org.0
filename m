Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF06279F6
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 12:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sImfIOWz5H6/Nza8V/VYfz7FQPSECzhbEtirF+4FDZ4=; b=kP3UrkGqMx61iC
	mK/ScuhuwXr0buKXQkrZSgtCcqVlSqfH/O4IJZnayoLsqC5+2I3hLk1XWT6amQy18VlKEUoTVDit7
	tAMIQR8uIzMP75WxWEW/S5oShW3U9agn0ooTRuvr5cIYRIKkx9dWM8QW8HQxyHovvTjTauu3tE0JI
	mCMuelJ1eMwWy+udht0hOZdB9PE/+AKW2G9ZBQdCfEe0MJtYbwIzRhJD8TKqMpPSF1hakLqblcEOz
	rrU614Qw9aUmwC3lLEysB1qdGZVuTmPX8xWhKHr2i2vcyHCFtLn3ZnGqnneFkcn0PEc3RYp7sMXQO
	wVcWT/hb0YLi+rXEojzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTkYa-0002Tn-BW; Thu, 23 May 2019 10:02:40 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTkYX-0002TM-4B
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 10:02:38 +0000
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4NA07AD046022
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 06:02:34 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2snpstyarg-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 06:02:34 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-riscv@lists.infradead.org> from <rppt@linux.ibm.com>;
 Thu, 23 May 2019 10:52:18 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 23 May 2019 10:52:17 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x4N9qGOT34406422
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 23 May 2019 09:52:16 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 900D24C04A;
 Thu, 23 May 2019 09:52:16 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 48C214C050;
 Thu, 23 May 2019 09:52:16 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.112])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Thu, 23 May 2019 09:52:16 +0000 (GMT)
Date: Thu, 23 May 2019 12:52:14 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: JaeJoon Jung <rgbi3307@gmail.com>
Subject: Re: [PATCH] riscv: using page table index in setup_vm()
References: <CAHOvCC7EtFcYQDAQoenP7RdwW-4FQEex4FG5jLR2W0m+Q8t__Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHOvCC7EtFcYQDAQoenP7RdwW-4FQEex4FG5jLR2W0m+Q8t__Q@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19052309-0028-0000-0000-00000370A35E
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19052309-0029-0000-0000-0000243054EE
Message-Id: <20190523095214.GD23850@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-23_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905230071
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_030237_272653_1A955B6E 
X-CRM114-Status: GOOD (  22.83  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, May 20, 2019 at 05:48:24PM +0900, JaeJoon Jung wrote:
> From: JaeJoon Jung <rgbi3307@gmail.com>
> 
> The page table index macro are defined already in pgtable.h as below:
> ///arch/riscv/include/asm/pgtable.h
> #define pgd_index(addr)     (((addr) >> PGDIR_SHIFT) & (PTRS_PER_PGD - 1))
> #define pte_index(addr)     (((addr) >> PAGE_SHIFT) & (PTRS_PER_PTE - 1))
> ///arch/riscv/include/asm/pgtable-64.h
> #define pmd_index(addr)     (((addr) >> PMD_SHIFT) & (PTRS_PER_PMD - 1))
> 
> But, In the arch/riscv/mm/init.c,
> I found that it does not use above macro in setup_vm().
> I wat to use this macro in setup_vm() as below:

I'd suggest the following changelog:
-----------------------------------------
riscv: setup_vm: use p?d_index() instead of its open coded implementation

The page table indexing macros are defined in include/asm/pgtable.h, but
setup_vm() uses an open coded implementation.

Replace it with the appropriate macros.
-----------------------------------------


> Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
> Cc: Anup Patel <anup.patel@wdc.com>
> Cc: linux-riscv@lists.infradead.org
 
Otherwise

Reviewed-by: Mike Rapoport <rppt@linux.ibm.com>
 
> diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> index bc7b77e34d09..785954b776ac 100644
> --- a/arch/riscv/mm/init.c
> +++ b/arch/riscv/mm/init.c
> 
>  asmlinkage void __init setup_vm(void)
>  {
>         extern char _start;
> @@ -223,13 +190,13 @@ asmlinkage void __init setup_vm(void)
>         BUG_ON((pa % (PAGE_SIZE * PTRS_PER_PTE)) != 0);
> 
>  #ifndef __PAGETABLE_PMD_FOLDED
> -       trampoline_pg_dir[(PAGE_OFFSET >> PGDIR_SHIFT) % PTRS_PER_PGD] =
> +       trampoline_pg_dir[pgd_index(PAGE_OFFSET)] =
>                 pfn_pgd(PFN_DOWN((uintptr_t)trampoline_pmd),
>                         __pgprot(_PAGE_TABLE));
>         trampoline_pmd[0] = pfn_pmd(PFN_DOWN(pa), prot);
> 
>         for (i = 0; i < (-PAGE_OFFSET)/PGDIR_SIZE; ++i) {
> -               size_t o = (PAGE_OFFSET >> PGDIR_SHIFT) % PTRS_PER_PGD + i;
> +               size_t o = pgd_index(PAGE_OFFSET) + i;
> 
>                 swapper_pg_dir[o] =
>                         pfn_pgd(PFN_DOWN((uintptr_t)swapper_pmd) + i,
> @@ -238,24 +205,23 @@ asmlinkage void __init setup_vm(void)
>         for (i = 0; i < ARRAY_SIZE(swapper_pmd); i++)
>                 swapper_pmd[i] = pfn_pmd(PFN_DOWN(pa + i * PMD_SIZE), prot);
> 
> -       swapper_pg_dir[(FIXADDR_START >> PGDIR_SHIFT) % PTRS_PER_PGD] =
> +       swapper_pg_dir[pgd_index(FIXADDR_START)] =
>                 pfn_pgd(PFN_DOWN((uintptr_t)fixmap_pmd),
>                                 __pgprot(_PAGE_TABLE));
> -       fixmap_pmd[(FIXADDR_START >> PMD_SHIFT) % PTRS_PER_PMD] =
> +       fixmap_pmd[pmd_index(FIXADDR_START)] =
>                 pfn_pmd(PFN_DOWN((uintptr_t)fixmap_pte),
>                                 __pgprot(_PAGE_TABLE));
>  #else
> -       trampoline_pg_dir[(PAGE_OFFSET >> PGDIR_SHIFT) % PTRS_PER_PGD] =
> +       trampoline_pg_dir[pgd_index(PAGE_OFFSET)] =
>                 pfn_pgd(PFN_DOWN(pa), prot);
> 
>         for (i = 0; i < (-PAGE_OFFSET)/PGDIR_SIZE; ++i) {
> -               size_t o = (PAGE_OFFSET >> PGDIR_SHIFT) % PTRS_PER_PGD + i;
> +               size_t o = pgd_index(PAGE_OFFSET) + i;
> 
>                 swapper_pg_dir[o] =
>                         pfn_pgd(PFN_DOWN(pa + i * PGDIR_SIZE), prot);
>         }
> -
> -       swapper_pg_dir[(FIXADDR_START >> PGDIR_SHIFT) % PTRS_PER_PGD] =
> +       swapper_pg_dir[pgd_index(FIXADDR_START)] =
>                 pfn_pgd(PFN_DOWN((uintptr_t)fixmap_pte),
>                                 __pgprot(_PAGE_TABLE));
>  #endif
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
> 

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
