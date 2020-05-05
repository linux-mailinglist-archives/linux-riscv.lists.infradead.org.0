Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF6B1C51C7
	for <lists+linux-riscv@lfdr.de>; Tue,  5 May 2020 11:20:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yJ1dGV5/AxBn23lS3ljtuD9PA4xpGSLfe5P2MVzxp3k=; b=D990n1B0+tC4pwwUU+9pI1l/9
	kpotnN/stXB5DejKsEYbSFOfdi/NvOe/u5ie3bstb7nh3OI4wnv88+GxvT4o6P67m52Us5gyYqbZ9
	fLbflwpsfMHoJdeuTG06vLRfb+SKtXePtbp2yrv6slWRe0rAi7UWVxqlGhdsfUlvtImdITSoiGaQu
	QNctR69GqeDJ4hlG5Qseoj0oRKYNRXpb57b19Xv0o1sV7tKFIxk6WXbHN0zkQSvy79piey6439WSK
	i35vKaT+R61rp0F2r18vf7V/d4N7iGTxbEDLxm9KHJ6+wHKJa5YmVbXJYEbQ1pTcpFnYyWKWZInFt
	kQrOWtzXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVtkY-0004rZ-31; Tue, 05 May 2020 09:20:26 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVtkT-0004nI-CD
 for linux-riscv@lists.infradead.org; Tue, 05 May 2020 09:20:23 +0000
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04594CAC050489; Tue, 5 May 2020 05:19:56 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com with ESMTP id 30u56jgepn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 05:19:55 -0400
Received: from m0098420.ppops.net (m0098420.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 04595nLE054630;
 Tue, 5 May 2020 05:19:55 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.99])
 by mx0b-001b2d01.pphosted.com with ESMTP id 30u56jgeny-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 05:19:55 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
 by ppma04ams.nl.ibm.com (8.16.0.27/8.16.0.27) with SMTP id 0459JgEN014336;
 Tue, 5 May 2020 09:19:53 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com
 (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
 by ppma04ams.nl.ibm.com with ESMTP id 30s0g5pkaj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 09:19:53 +0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com
 (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
 by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 0459JovB46727274
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 5 May 2020 09:19:50 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id BC5C2A405B;
 Tue,  5 May 2020 09:19:50 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 58FB2A4054;
 Tue,  5 May 2020 09:19:48 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.204.113])
 by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Tue,  5 May 2020 09:19:48 +0000 (GMT)
Date: Tue, 5 May 2020 12:19:46 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v2 17/20] mm: free_area_init: allow defining max_zone_pfn
 in descending order
Message-ID: <20200505091946.GG342687@linux.ibm.com>
References: <20200429121126.17989-1-rppt@kernel.org>
 <20200429121126.17989-18-rppt@kernel.org>
 <20200503174138.GA114085@roeck-us.net>
 <20200503184300.GA154219@roeck-us.net>
 <20200504153901.GM14260@kernel.org>
 <a0b20e15-fddb-aa9c-fd67-f1c8e735b4a4@synopsys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a0b20e15-fddb-aa9c-fd67-f1c8e735b4a4@synopsys.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-05_04:2020-05-04,
 2020-05-05 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0
 priorityscore=1501 bulkscore=0 mlxlogscore=999 malwarescore=0 phishscore=0
 impostorscore=0 adultscore=0 suspectscore=5 mlxscore=0 clxscore=1011
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005050069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_022021_542478_46E3B2AF 
X-CRM114-Status: GOOD (  34.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.158.5 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rich Felker <dalias@libc.org>,
 "linux-ia64@vger.kernel.org" <linux-ia64@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Michal Hocko <mhocko@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Guo Ren <guoren@kernel.org>,
 "linux-csky@vger.kernel.org" <linux-csky@vger.kernel.org>,
 "sparclinux@vger.kernel.org" <sparclinux@vger.kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Greg Ungerer <gerg@linux-m68k.org>,
 "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "linux-c6x-dev@linux-c6x.org" <linux-c6x-dev@linux-c6x.org>,
 Baoquan He <bhe@redhat.com>, Jonathan Corbet <corbet@lwn.net>,
 "linux-sh@vger.kernel.org" <linux-sh@vger.kernel.org>,
 "linux-hexagon@vger.kernel.org" <linux-hexagon@vger.kernel.org>,
 Helge Deller <deller@gmx.de>, "x86@kernel.org" <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Ley Foon Tan <ley.foon.tan@intel.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Guenter Roeck <linux@roeck-us.net>,
 Mike Rapoport <rppt@kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Vineet,

On Tue, May 05, 2020 at 06:23:37AM +0000, Vineet Gupta wrote:
> Hi Mike,
> 
> On 5/4/20 8:39 AM, Mike Rapoport wrote:
> > On Sun, May 03, 2020 at 11:43:00AM -0700, Guenter Roeck wrote:
> >> On Sun, May 03, 2020 at 10:41:38AM -0700, Guenter Roeck wrote:
> >>> Hi,
> >>>
> >>> On Wed, Apr 29, 2020 at 03:11:23PM +0300, Mike Rapoport wrote:
> >>>> From: Mike Rapoport <rppt@linux.ibm.com>
> >>>>
> >>>> Some architectures (e.g. ARC) have the ZONE_HIGHMEM zone below the
> >>>> ZONE_NORMAL. Allowing free_area_init() parse max_zone_pfn array even it is
> >>>> sorted in descending order allows using free_area_init() on such
> >>>> architectures.
> >>>>
> >>>> Add top -> down traversal of max_zone_pfn array in free_area_init() and use
> >>>> the latter in ARC node/zone initialization.
> >>>>
> >>>> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> >>>
> >>> This patch causes my microblazeel qemu boot test in linux-next to fail.
> >>> Reverting it fixes the problem.
> >>>
> >> The same problem is seen with s390 emulations.
> > 
> > Yeah, this patch breaks some others as well :(
> > 
> > My assumption that max_zone_pfn defines architectural limit for maximal
> > PFN that can belong to a zone was over-optimistic. Several arches
> > actually do that, but others do
> > 
> > 	max_zone_pfn[ZONE_DMA] = MAX_DMA_PFN;
> > 	max_zone_pfn[ZONE_NORMAL] = max_pfn;
> > 
> > where MAX_DMA_PFN is build-time constrain and max_pfn is run time limit
> > for the current system.
> > 
> > So, when max_pfn is lower than MAX_DMA_PFN, the free_init_area() will
> > consider max_zone_pfn as descending and will wrongly calculate zone
> > extents.
> > 
> > That said, instead of trying to create a generic way to special case
> > ARC, I suggest to simply use the below patch instead.
> 
> Even for ARC it will be a bit more complicated. Highmem on ARC can be setup in 2
> ways such that it is descending in one case, and ascending in other (w.r.t
> "normal" mem) :-(

Yeah, and this makes ARC really special :)

> First some basic info about an ARC MMU based system
> 
> ARC logical address space (various addresses embedded in binaries)
>  - translated (0 to 0x6FFF_FFFF)  - for userspace
>  - untranslated (0x8000_0000 to 0xFFFF_FFFF) - kernel
> 
> ARC Physical address space is typically from 0x8000_0000 to 0xF000_0000.
> Above translated space maps here via MMU. Untranslated is implicitly mapped (no
> MMU involved).
> 
> The physical address in turn maps to a Bus address / memory (done at the
> inter-connect/NoC). Typically Physical 0x8000_0000 map to DDR 0
> 
> Now,
> - HIGHMEM w/o PAE40 adds Physical address space 0 to 0x7FFF_FFFF.
> - HIGHMEM with PAE40 uses physical address space from 0x1_0000_0000 upwards.
> 
> But then you could also have a system which has both of above so the bimodal up/dn
> won't work.

From the code I've got the impression that it is either one of them. I.e
the physical memory is either at

0x8000_0000 - <end of DDR 0 bank>
0x0000_0000 - <end of DDR 1 bank>

or

0x0_8000_0000 - <end of DDR 0 bank>
0x1_0000_0000 - <end of DDR 1 bank>

Is this possible to have a system with three live ranges? Like

0x0_0000_0000 - <end of DDR 1 bank>
0x0_8000_0000 - <end of DDR 0 bank>
0x1_0000_0000 - <end of DDR 2 bank>

> While I appreciate the effort to reduce complexity, it seems the
> current way of
> setting things up allows for more flexibility in specifying the system memory map.
>
> PS: I haven't looked at your series too carefully, the mention of ARC caught my
> attention :-) I guess I need to read it more carefully to understand.
 
That would be cool :)

> > 
> > diff --git a/arch/arc/mm/init.c b/arch/arc/mm/init.c
> > index 41eb9be1653c..386959bac3d2 100644
> > --- a/arch/arc/mm/init.c
> > +++ b/arch/arc/mm/init.c
> > @@ -77,6 +77,11 @@ void __init early_init_dt_add_memory_arch(u64 base, u64 size)
> >  		base, TO_MB(size), !in_use ? "Not used":"");
> >  }
> >  
> > +bool arch_has_descending_max_zone_pfns(void)
> > +{
> > +	return true;
> > +}
> > +
> >  /*
> >   * First memory setup routine called from setup_arch()
> >   * 1. setup swapper's mm @init_mm
> > diff --git a/mm/page_alloc.c b/mm/page_alloc.c
> > index b990e9734474..114f0e027144 100644
> > --- a/mm/page_alloc.c
> > +++ b/mm/page_alloc.c
> > @@ -7307,6 +7307,15 @@ static void check_for_memory(pg_data_t *pgdat, int nid)
> >  	}
> >  }
> >  
> > +/*
> > + * Some architecturs, e.g. ARC may have ZONE_HIGHMEM below ZONE_NORMAL. For
> > + * such cases we allow max_zone_pfn sorted in the descending order
> > + */
> > +bool __weak arch_has_descending_max_zone_pfns(void)
> > +{
> > +	return false;
> > +}
> > +
> >  /**
> >   * free_area_init - Initialise all pg_data_t and zone data
> >   * @max_zone_pfn: an array of max PFNs for each zone
> > @@ -7324,7 +7333,7 @@ void __init free_area_init(unsigned long *max_zone_pfn)
> >  {
> >  	unsigned long start_pfn, end_pfn;
> >  	int i, nid, zone;
> > -	bool descending = false;
> > +	bool descending;
> >  
> >  	/* Record where the zone boundaries are */
> >  	memset(arch_zone_lowest_possible_pfn, 0,
> > @@ -7333,14 +7342,7 @@ void __init free_area_init(unsigned long *max_zone_pfn)
> >  				sizeof(arch_zone_highest_possible_pfn));
> >  
> >  	start_pfn = find_min_pfn_with_active_regions();
> > -
> > -	/*
> > -	 * Some architecturs, e.g. ARC may have ZONE_HIGHMEM below
> > -	 * ZONE_NORMAL. For such cases we allow max_zone_pfn sorted in the
> > -	 * descending order
> > -	 */
> > -	if (MAX_NR_ZONES > 1 && max_zone_pfn[0] > max_zone_pfn[1])
> > -		descending = true;
> > +	descending = arch_has_descending_max_zone_pfns();
> >  
> >  	for (i = 0; i < MAX_NR_ZONES; i++) {
> >  		if (descending)
> > 

-- 
Sincerely yours,
Mike.

