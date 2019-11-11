Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED6CF829F
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 22:56:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	References:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ood5enjsxgIoaRdMhgYFsuuATOkYAli9TMfMIai6a24=; b=Y8rx44wkRYugoM
	wgSrp7LNX5cfQaXYmzmOdv/ObPYyD5d7xI5xQbhI46eCJmEak1C2Y/r5FYSzwYBzwucq04zAN1YxZ
	BvJ0d6aQOMzmRyyS3z5ToPnFbNxk+ImSHw5Dn+Zbx26xvh/zfX4NKdgF56LfamAO0XyY107jVzypL
	1HW37ZlpgfcHvb/dnRWRvsLZV6iTQwG/SP4irwSsBNJY0NQWAMotc93zbnXcAgjbYXt6lc9Ka3wSs
	3M0BlLvUmhbW3BUw+h8e3UJ2yjG5n3l48riWuvfgnPvgGxIrj8ZiN0C89kSd1kSCA6ZAEBUV1SiRj
	ApyMfzdBo83InSk3ickQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUHf6-0008Lj-Iy; Mon, 11 Nov 2019 21:55:52 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUHf3-0008Kr-Gd
 for linux-riscv@lists.infradead.org; Mon, 11 Nov 2019 21:55:51 +0000
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 xABLr4Mm120914
 for <linux-riscv@lists.infradead.org>; Mon, 11 Nov 2019 16:55:43 -0500
Received: from e06smtp07.uk.ibm.com (e06smtp07.uk.ibm.com [195.75.94.103])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2w7e6abddx-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-riscv@lists.infradead.org>; Mon, 11 Nov 2019 16:55:43 -0500
Received: from localhost
 by e06smtp07.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-riscv@lists.infradead.org> from <rppt@linux.ibm.com>;
 Mon, 11 Nov 2019 21:55:40 -0000
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp07.uk.ibm.com (192.168.101.137) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Mon, 11 Nov 2019 21:55:35 -0000
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com
 [9.149.105.61])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 xABLtYBY59572406
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 11 Nov 2019 21:55:34 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 9B92611C052;
 Mon, 11 Nov 2019 21:55:34 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B682C11C04C;
 Mon, 11 Nov 2019 21:55:31 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.207.107])
 by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Mon, 11 Nov 2019 21:55:31 +0000 (GMT)
Date: Mon, 11 Nov 2019 22:55:28 +0100
From: Mike Rapoport <rppt@linux.ibm.com>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH] RISC-V: Add address map dumper
References: <1573450015-16475-1-git-send-email-yash.shah@sifive.com>
 <91f35033-ffc8-cd2e-36f7-c6f4f25be36b@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <91f35033-ffc8-cd2e-36f7-c6f4f25be36b@deltatee.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-TM-AS-GCONF: 00
x-cbid: 19111121-0028-0000-0000-000003B60582
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19111121-0029-0000-0000-0000247905BA
Message-Id: <20191111215527.GA10647@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-11-11_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=973 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1910280000 definitions=main-1911110188
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_135549_557491_040B9E0D 
X-CRM114-Status: GOOD (  31.55  )
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "Anup.Patel@wdc.com" <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sachin Ghadi <sachin.ghadi@sifive.com>, Yash Shah <yash.shah@sifive.com>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "ren_guo@c-sky.com" <ren_guo@c-sky.com>,
 "Paul Walmsley \( Sifive\)" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "bmeng.cn@gmail.com" <bmeng.cn@gmail.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 11:14:30AM -0700, Logan Gunthorpe wrote:
> 
> 
> On 2019-11-10 10:27 p.m., Yash Shah wrote:
> > Add support for dumping the kernel address space layout to the console.
> > User can enable CONFIG_DEBUG_VM_LAYOUT to dump the virtual memory region
> > into dmesg buffer during boot-up.
> 
> Cool, I'd find this useful. Though, is there any reason we don't do this
> more generally for all architectures?

Some architectures do this, some don't. I don't think there's a particular
reason we don't do this generally, it just evolved that way :)
 
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> > ---
> > This patch is based on Linux 5.4-rc6 and tested on SiFive HiFive Unleashed
> > board.
> > ---
> >  arch/riscv/Kconfig.debug |  9 +++++++++
> >  arch/riscv/mm/init.c     | 30 ++++++++++++++++++++++++++++++
> >  2 files changed, 39 insertions(+)
> > 
> > diff --git a/arch/riscv/Kconfig.debug b/arch/riscv/Kconfig.debug
> > index e69de29..cdedfd3 100644
> > --- a/arch/riscv/Kconfig.debug
> > +++ b/arch/riscv/Kconfig.debug
> > @@ -0,0 +1,9 @@
> > +config DEBUG_VM_LAYOUT
> > +	bool "Print virtual memory layout on boot up"
> > +	depends on DEBUG_KERNEL
> > +	help
> > +	  Say Y here if you want to dump the kernel virtual memory layout to
> > +	  dmesg log on boot up. This information is only useful for kernel
> > +	  developers who are working in architecture specific areas of the
> > +	  kernel. It is probably not a good idea to enable this feature in a
> > +	  production kernel.
> > diff --git a/arch/riscv/mm/init.c b/arch/riscv/mm/init.c
> > index 79cfb35..fcb8144 100644
> > --- a/arch/riscv/mm/init.c
> > +++ b/arch/riscv/mm/init.c
> > @@ -55,6 +55,36 @@ void __init mem_init(void)
> >  	memblock_free_all();
> >  
> >  	mem_init_print_info(NULL);
> > +#ifdef CONFIG_DEBUG_VM_LAYOUT
> 
> Generally, it's best to avoid #ifdefs inside functions, it's even
> counter-indicated in the style guide[1].
> 
> > +#define MLK(b, t) b, t, (((t) - (b)) >> 10)
> > +#define MLM(b, t) b, t, (((t) - (b)) >> 20)
> > +#define MLK_ROUNDUP(b, t) b, t, DIV_ROUND_UP(((t) - (b)), SZ_1K)
> 
> I personally find these inline defines rather ugly. Maybe it would be
> better to have a helper function that prints a single line. Also seems
> like MLK and MLK_ROUNDUP could be the same assuming the entries in MLK
> are aligned...
> 
> > +
> > +	pr_notice("Virtual kernel memory layout:\n"
> > +			"    fixmap  : 0x%08lx - 0x%08lx   (%4ld kB)\n"
> > +			"    vmemmap : 0x%08lx - 0x%08lx   (%4ld MB)\n"
> > +			"    vmalloc : 0x%08lx - 0x%08lx   (%4ld MB)\n"
> > +			"    lowmem  : 0x%08lx - 0x%08lx   (%4ld MB)\n"
> > +			"      .init : 0x%px - 0x%px   (%4td kB)\n"
> > +			"      .text : 0x%px - 0x%px   (%4td kB)\n"
> > +			"      .data : 0x%px - 0x%px   (%4td kB)\n"
> > +			"       .bss : 0x%px - 0x%px   (%4td kB)\n",
> > +
> > +			MLK(FIXADDR_START, FIXADDR_TOP),
> > +			MLM(VMEMMAP_START, VMEMMAP_END),
> > +			MLM(VMALLOC_START, VMALLOC_END),
> > +			MLM(PAGE_OFFSET, (unsigned long)high_memory),
> > +
> > +			MLK_ROUNDUP(__init_begin, __init_end),
> > +			MLK_ROUNDUP(_text, _etext),
> > +			MLK_ROUNDUP(_sdata, _edata),
> > +			MLK_ROUNDUP(__bss_start, __bss_stop));
> > +
> > +#undef MLK
> > +#undef MLM
> > +#undef MLK_ROUNDUP
> > +#endif
> >  }
> >  
> >  #ifdef CONFIG_BLK_DEV_INITRD
> 
> Thanks,
> 
> Logan
> 
> [1]
> https://www.kernel.org/doc/html/latest/process/coding-style.html#conditional-compilation

-- 
Sincerely yours,
Mike.


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
