Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80F051B28EF
	for <lists+linux-riscv@lfdr.de>; Tue, 21 Apr 2020 16:02:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4dg632YBDu/3Jn4Sej4w0t06c9e6boAlYtbCb+AEtt8=; b=WLhQ/cvRGaYOHGkZssWIUmMKP
	NDTeUwvPgz6DtZtODC3bP+h3dP/hQILKwTgnpvUiHmpymGoEM1op+y8FDFYmMHk9qC0IBsZmI5Qse
	YWhio7uYl5p1f/Sn4Fpp/muTiIHBPoRxvheMZz3yUl2seeWFXmDMpVsxWHMoBl5HXqrrdGZn2FP9y
	ByIa32uECfL1rXRM4Vi9tVSnnpBeUpOhROouj/gOmAyL/+skDUDQbwOePMqczsE8X+vGrUznvLQqE
	G3RsfevxViivyD8RD9+NlNBZkCG+Aymxznvp7YIpRPZvvVYS85DyGhnCP6xHHAk0mKQUVzL0rwX1m
	6Nw+rrtEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQtTu-0005bz-2h; Tue, 21 Apr 2020 14:02:34 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtTf-0005QJ-T9
 for linux-riscv@lists.infradead.org; Tue, 21 Apr 2020 14:02:21 +0000
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03LDYu7B087810
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 10:02:16 -0400
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
 by mx0a-001b2d01.pphosted.com with ESMTP id 30ggr2j9bs-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <linux-riscv@lists.infradead.org>; Tue, 21 Apr 2020 10:02:16 -0400
Received: from localhost
 by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <linux-riscv@lists.infradead.org> from <gerald.schaefer@de.ibm.com>;
 Tue, 21 Apr 2020 15:01:30 +0100
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
 by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Tue, 21 Apr 2020 15:01:21 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
 [9.149.105.59])
 by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 03LE24dv53608476
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 Apr 2020 14:02:04 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0AFD5A4057;
 Tue, 21 Apr 2020 14:02:04 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 2FEB3A405B;
 Tue, 21 Apr 2020 14:02:03 +0000 (GMT)
Received: from thinkpad (unknown [9.145.65.41])
 by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Tue, 21 Apr 2020 14:02:03 +0000 (GMT)
Date: Tue, 21 Apr 2020 16:02:01 +0200
From: Gerald Schaefer <gerald.schaefer@de.ibm.com>
To: Mike Kravetz <mike.kravetz@oracle.com>
Subject: Re: [PATCH v3 0/4] Clean up hugetlb boot command line processing
In-Reply-To: <20200417185049.275845-1-mike.kravetz@oracle.com>
References: <20200417185049.275845-1-mike.kravetz@oracle.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
x-cbid: 20042114-4275-0000-0000-000003C3FB90
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20042114-4276-0000-0000-000038D9805D
Message-Id: <20200421160201.0ddb9763@thinkpad>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-21_05:2020-04-20,
 2020-04-21 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=999
 spamscore=0 impostorscore=0 malwarescore=0 suspectscore=0 mlxscore=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 phishscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004210104
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_070220_251523_4D8AF097 
X-CRM114-Status: GOOD (  29.48  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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
Cc: linux-doc@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Peter Xu <peterx@redhat.com>,
 linux-mm@kvack.org, Paul Mackerras <paulus@samba.org>,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, Mina Almasry <almasrymina@google.com>,
 linux-s390@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Nitesh Narayan Lal <nitesh@redhat.com>, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S . Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 17 Apr 2020 11:50:45 -0700
Mike Kravetz <mike.kravetz@oracle.com> wrote:

> v3 -
>    Used weak attribute method of defining arch_hugetlb_valid_size.
>      This eliminates changes to arch specific hugetlb.h files (Peter)
>    Updated documentation (Peter, Randy)
>    Fixed handling of implicitly specified gigantic page preallocation
>      in existing code and removed documentation of such.  There is now
>      no difference between handling of gigantic and non-gigantic pages.
>      (Peter, Nitesh).
>      This requires the most review as there is a small change to
>      undocumented behavior.  See patch 4 commit message for details.
>    Added Acks and Reviews (Mina, Peter)
> 
> v2 -
>    Fix build errors with patch 1 (Will)
>    Change arch_hugetlb_valid_size arg to unsigned long and remove
>      irrelevant 'extern' keyword (Christophe)
>    Documentation and other misc changes (Randy, Christophe, Mina)
>    Do not process command line options if !hugepages_supported()
>      (Dave, but it sounds like we may want to additional changes to
>       hugepages_supported() for x86?  If that is needed I would prefer
>       a separate patch.)
> 
> Longpeng(Mike) reported a weird message from hugetlb command line processing
> and proposed a solution [1].  While the proposed patch does address the
> specific issue, there are other related issues in command line processing.
> As hugetlbfs evolved, updates to command line processing have been made to
> meet immediate needs and not necessarily in a coordinated manner.  The result
> is that some processing is done in arch specific code, some is done in arch
> independent code and coordination is problematic.  Semantics can vary between
> architectures.
> 
> The patch series does the following:
> - Define arch specific arch_hugetlb_valid_size routine used to validate
>   passed huge page sizes.
> - Move hugepagesz= command line parsing out of arch specific code and into
>   an arch independent routine.
> - Clean up command line processing to follow desired semantics and
>   document those semantics.
> 
> [1] https://lore.kernel.org/linux-mm/20200305033014.1152-1-longpeng2@huawei.com
> 
> Mike Kravetz (4):
>   hugetlbfs: add arch_hugetlb_valid_size
>   hugetlbfs: move hugepagesz= parsing to arch independent code
>   hugetlbfs: remove hugetlb_add_hstate() warning for existing hstate
>   hugetlbfs: clean up command line processing
> 
>  .../admin-guide/kernel-parameters.txt         |  40 ++--
>  Documentation/admin-guide/mm/hugetlbpage.rst  |  35 ++++
>  arch/arm64/mm/hugetlbpage.c                   |  30 +--
>  arch/powerpc/mm/hugetlbpage.c                 |  30 +--
>  arch/riscv/mm/hugetlbpage.c                   |  24 +--
>  arch/s390/mm/hugetlbpage.c                    |  24 +--
>  arch/sparc/mm/init_64.c                       |  43 +---
>  arch/x86/mm/hugetlbpage.c                     |  23 +--
>  include/linux/hugetlb.h                       |   2 +-
>  mm/hugetlb.c                                  | 190 +++++++++++++++---
>  10 files changed, 271 insertions(+), 170 deletions(-)
> 

Looks good and works fine for s390, thanks for cleaning up!

Acked-by: Gerald Schaefer <gerald.schaefer@de.ibm.com> # s390


