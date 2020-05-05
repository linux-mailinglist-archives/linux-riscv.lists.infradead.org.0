Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1871C61CD
	for <lists+linux-riscv@lfdr.de>; Tue,  5 May 2020 22:15:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yJhsuzRLxUYgL5G7fTxknfBdVc++kYDaZbg2TEhLfSE=; b=uTLOV0lepIgugOaLOHBoFMqf3
	+HMeo/e9AgVah0rUNyfhOmqqYnYhXGuZlymtKTgC7avI3Jh0zl4kK4rU/HZOW5Z96EwAZc1KEVxdd
	gChRN0wEddEWJBWWQ+Nx0LLE8Fl7WV52LuLCvu8H02Aahqi3waHtxAhX5fG2t0iNqkscwpwDVJeYQ
	W4oOzjUIQGyNjHu4BZfGVk4mtBlT8m/lKmERqAJR0VV+FT0sPYKTYXOi2gpivBa5D4HnUKoj97pbI
	gBfuo+H4NiWV0p+C59exHjGUHaUffutlrPq89dH5fJ69DK9d1svZglCBdLDhwFcdWi2ZBohHt3cGO
	eQ6tfuwQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW3ys-0006cp-Qt; Tue, 05 May 2020 20:15:54 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW3yo-0006cE-TD
 for linux-riscv@lists.infradead.org; Tue, 05 May 2020 20:15:52 +0000
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 045K3V4l125345; Tue, 5 May 2020 16:15:32 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 30twhxgdka-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 16:15:32 -0400
Received: from m0098394.ppops.net (m0098394.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 045K3vmL127279;
 Tue, 5 May 2020 16:15:31 -0400
Received: from ppma04ams.nl.ibm.com (63.31.33a9.ip4.static.sl-reverse.com
 [169.51.49.99])
 by mx0a-001b2d01.pphosted.com with ESMTP id 30twhxgdj9-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 16:15:31 -0400
Received: from pps.filterd (ppma04ams.nl.ibm.com [127.0.0.1])
 by ppma04ams.nl.ibm.com (8.16.0.27/8.16.0.27) with SMTP id 045KErIv004025;
 Tue, 5 May 2020 20:15:29 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com
 (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
 by ppma04ams.nl.ibm.com with ESMTP id 30s0g5qmp5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 20:15:29 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com
 [9.149.105.58])
 by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP
 id 045KFQp953281128
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 5 May 2020 20:15:26 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id D75154C04A;
 Tue,  5 May 2020 20:15:26 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 74F714C04E;
 Tue,  5 May 2020 20:15:24 +0000 (GMT)
Received: from linux.ibm.com (unknown [9.148.204.113])
 by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
 Tue,  5 May 2020 20:15:24 +0000 (GMT)
Date: Tue, 5 May 2020 23:15:22 +0300
From: Mike Rapoport <rppt@linux.ibm.com>
To: Vineet Gupta <Vineet.Gupta1@synopsys.com>
Subject: Re: [PATCH v2 17/20] mm: free_area_init: allow defining max_zone_pfn
 in descending order
Message-ID: <20200505201522.GA683243@linux.ibm.com>
References: <20200429121126.17989-1-rppt@kernel.org>
 <20200429121126.17989-18-rppt@kernel.org>
 <20200503174138.GA114085@roeck-us.net>
 <20200503184300.GA154219@roeck-us.net>
 <20200504153901.GM14260@kernel.org>
 <a0b20e15-fddb-aa9c-fd67-f1c8e735b4a4@synopsys.com>
 <20200505091946.GG342687@linux.ibm.com>
 <88b9465b-6e6d-86ca-3776-ccb7a5b60b7f@synopsys.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <88b9465b-6e6d-86ca-3776-ccb7a5b60b7f@synopsys.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-05_10:2020-05-04,
 2020-05-05 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0
 malwarescore=0 impostorscore=0 suspectscore=5 mlxscore=0 clxscore=1015
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005050154
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_131550_950168_F9F3EFEF 
X-CRM114-Status: GOOD (  21.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.156.1 listed in wl.mailspike.net]
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

On Tue, May 05, 2020 at 06:07:46PM +0000, Vineet Gupta wrote:
> On 5/5/20 2:19 AM, Mike Rapoport wrote:
> > From the code I've got the impression that it is either one of them. I.e
> > the physical memory is either at
> >
> > 0x8000_0000 - <end of DDR 0 bank>
> > 0x0000_0000 - <end of DDR 1 bank>
> >
> > or
> >
> > 0x0_8000_0000 - <end of DDR 0 bank>
> > 0x1_0000_0000 - <end of DDR 1 bank>
> >
> > Is this possible to have a system with three live ranges? Like
> >
> > 0x0_0000_0000 - <end of DDR 1 bank>
> > 0x0_8000_0000 - <end of DDR 0 bank>
> > 0x1_0000_0000 - <end of DDR 2 bank>
> 
> We don't have such a system, but it is indeed possible in theory. The question is
>  - Can other arches have such a setup too

At the moment all architectures that support HIGHMEM have it above
DMA/NORMAL. I'm not sure if such a setup is theoretically possible for
other architectures, but as of now none of them support it in Linux.

The general case is somewhat like

	max_dma_pfn <= max_normal_pfn < max_high_pfn

And of course, either max_dma_pfn or max_high_pfn or both may be not
needed for an architecture.

>  - Is it not better to have the core retain the flexibility just in case

Hmm, there is indeed flexibility in the nodes and zones initialization,
but if you'd look more closely to free_area_init*() and friends, there
is a lot of cruft and retrofitting ;-)

What we have is two mutually exclusive paths, one that relies on the
architecture to calculate zone sizes and find the holes between the
zones (!CONFIG_HAVE_MEMBLOCK_NODE_MAP) and the other one that only
requires the architectures to pass possible limit for each zone and
detects the actual zone spans based on the knowlegde about the actual
physical memory layout that comes from memblock.

These patches attempt to drop the older method and switch all the
architectures to use newer and simpler one.

If the requirement to have support for 3-banks is a theoretical
possibility, I would prefer to adjust ARC's version of
arch_has_descending_max_zone_pfns() to cope with either of 2-banks
configuration (PAE40 and non-PAE40) and deal with the third bank when/if
it actually materializes.

> Thx,
> -Vineet

-- 
Sincerely yours,
Mike.

