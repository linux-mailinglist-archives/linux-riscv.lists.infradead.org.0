Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCDF13DB2
	for <lists+linux-riscv@lfdr.de>; Sun,  5 May 2019 08:16:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dO7L7iEQBFkhP3DQMapZcQ2CTSMMDuScxmh7WaVcb8Y=; b=mAhehtG0PM+Onz
	4JXmyf2h8OJO55MeRZixN2FtxaCAhXlXkbnLEcyNw9IRRqI31y2MB6COW/44hkWRhrw2veZXew3Zt
	TKWlN67Pru/EGJd1Tw6W20mtikSHdl4sMmEUnWFI70r4HFPXt0WwO7/H0wnbQIv8UKq8l/WL5SwGo
	xcdFtNCvQyidkYief90uaBF42vBOtZfdzJvsCJwUrvBkNmpitGAhiAss0Z4wKQXf1+bT18rdnMA7p
	JlgbhckpZqrwIdWF6GvJeybGQI+1GaWbkBBodOgpMAGmE1z/0Jy681aaCvWleNivRtK235V/4qaE+
	fMIuZl/2BjtcoBN8reag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNARP-0004v9-EG; Sun, 05 May 2019 06:16:03 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNARA-0004l8-EA
 for linux-riscv@lists.infradead.org; Sun, 05 May 2019 06:15:49 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4566wGZ174863
 for <linux-riscv@lists.infradead.org>; Sun, 5 May 2019 02:15:41 -0400
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2s9r8x3jdg-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-riscv@lists.infradead.org>; Sun, 05 May 2019 02:15:40 -0400
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-riscv@lists.infradead.org> from <rppt@linux.ibm.com>;
 Sun, 5 May 2019 07:15:38 +0100
Received: from b06cxnps3074.portsmouth.uk.ibm.com (9.149.109.194)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Sun, 5 May 2019 07:15:31 +0100
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
 by b06cxnps3074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x456FUUd61079648
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sun, 5 May 2019 06:15:30 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id EB15F42042;
 Sun,  5 May 2019 06:15:29 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id BE8ED42047;
 Sun,  5 May 2019 06:15:27 +0000 (GMT)
Received: from rapoport-lnx (unknown [9.148.8.112])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Sun,  5 May 2019 06:15:27 +0000 (GMT)
Date: Sun, 5 May 2019 09:15:26 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Paul Burton <paul.burton@mips.com>
Subject: Re: [PATCH 01/15] asm-generic, x86: introduce generic
 pte_{alloc,free}_one[_kernel]
References: <1556810922-20248-1-git-send-email-rppt@linux.ibm.com>
 <1556810922-20248-2-git-send-email-rppt@linux.ibm.com>
 <20190502190310.voenw3pwgpelmdgw@pburton-laptop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502190310.voenw3pwgpelmdgw@pburton-laptop>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19050506-0028-0000-0000-0000036A7624
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19050506-0029-0000-0000-00002429E811
Message-Id: <20190505061525.GC15755@rapoport-lnx>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-05_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=835 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1810050000 definitions=main-1905050056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_231548_610130_1CB4E819 
X-CRM114-Status: GOOD (  19.39  )
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
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 Guo Ren <guoren@kernel.org>,
 "linux-hexagon@vger.kernel.org" <linux-hexagon@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Helge Deller <deller@gmx.de>,
 "x86@kernel.org" <x86@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Matthew Wilcox <willy@infradead.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Matt Turner <mattst88@gmail.com>,
 Sam Creasey <sammy@sammy.net>, Arnd Bergmann <arnd@arndb.de>,
 "linux-alpha@vger.kernel.org" <linux-alpha@vger.kernel.org>,
 "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>,
 "linux-m68k@lists.linux-m68k.org" <linux-m68k@lists.linux-m68k.org>,
 Greentime Hu <green.hu@gmail.com>,
 "nios2-dev@lists.rocketboards.org" <nios2-dev@lists.rocketboards.org>,
 Guan Xuetao <gxt@pku.edu.cn>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Richard Kuo <rkuo@codeaurora.org>, Richard Weinberger <richard@nod.at>,
 Ley Foon Tan <lftan@altera.com>, Andrew Morton <akpm@linux-foundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 07:03:11PM +0000, Paul Burton wrote:
> Hi Mike,
> 
> On Thu, May 02, 2019 at 06:28:28PM +0300, Mike Rapoport wrote:
> > +/**
> > + * pte_free_kernel - free PTE-level user page table page
> > + * @mm: the mm_struct of the current context
> > + * @pte_page: the `struct page` representing the page table
> > + */
> > +static inline void pte_free(struct mm_struct *mm, struct page *pte_page)
> > +{
> > +	pgtable_page_dtor(pte_page);
> > +	__free_page(pte_page);
> > +}
> 
> Nit: the comment names the wrong function (s/pte_free_kernel/pte_free/).

Argh, evil copy-paste :)
Thanks!
 
> Thanks,
>     Paul
> 

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
