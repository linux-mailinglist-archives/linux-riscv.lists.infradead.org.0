Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6581BAD98
	for <lists+linux-riscv@lfdr.de>; Mon, 27 Apr 2020 21:11:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEDia4zMBZ8uXaQ9p7jtiwi1+JFZYurTsb0V3zlgmAU=; b=WM3jyUvcI6iibr
	n2vilYkHfJIhKoxt7v6JnXUU9DHf1JzfNPNFo5zQCAeFjGujXebW9CmqM23EieYVsUfEP30tjhNR8
	9927moTEsRwHC9gYpme+MMVrWGUD9AdWStO/44u/wbprO/rcFU5eX3wYKGv4afjuVx07k7OiT/7Tf
	+R4gYSYMfv0VPIp5GPnhyKMWGrtP5jwSayP96wuMBqFRLcWtFPNv5KyI/5YjsAkbWOF0AqHNzlyuD
	A/XUrL3WmpQ43TzPIFc3L80anCEnxHhpX7sW/2uCvPBxLt91ri4X/K0zoo1orxMYWfumBapgwaH1u
	soPnPGnADFvIiJlwY0qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT9AD-0003h6-Fb; Mon, 27 Apr 2020 19:11:33 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT9A9-0003fk-0l; Mon, 27 Apr 2020 19:11:30 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03RJ9QJn028975;
 Mon, 27 Apr 2020 19:10:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=subject : from : to :
 cc : references : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=corp-2020-01-29;
 bh=hEDia4zMBZ8uXaQ9p7jtiwi1+JFZYurTsb0V3zlgmAU=;
 b=lVp5EA5Li9X7YNs4kLFUL1LfUFYDpCR2wtVaUroDVUM0FHlQiOHrt5HEtZF6hplhGwCH
 ck76IiH+mttB+uE0fo3QwHY8wUZgbvrweYNU069YcHGQsC+mYIw7EE0LFPlTgq8M0ZGK
 f8Uvq2Oz+7vIrdPyFNByjDDIEnWd+Gy2E2ISBo8cw347SwEigzmcQXrYtAMKWIQX9pRu
 ApCDOKA1QDKxu3lNvX+KaVT9zod7cyXLF6M0DCe2AFvIj2iLfDt+gDH0WngjweUDGoYl
 QCyjNxOiX7EosxGJQMVEmkSyjYB8t+7jtbV2lH8J8w3h9oLd7+ce/f7+9Z89zr4O2G4x iw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 30p2p00y0t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Apr 2020 19:10:01 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 03RJ88fW054624;
 Mon, 27 Apr 2020 19:10:01 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 30mxrqvqxc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 Apr 2020 19:10:00 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 03RJ9owN023990;
 Mon, 27 Apr 2020 19:09:50 GMT
Received: from [192.168.2.157] (/71.63.128.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 27 Apr 2020 12:09:50 -0700
Subject: Re: [PATCH v3 2/4] hugetlbfs: move hugepagesz= parsing to arch
 independent code
From: Mike Kravetz <mike.kravetz@oracle.com>
To: Sandipan Das <sandipan.osd@gmail.com>
References: <20200417185049.275845-1-mike.kravetz@oracle.com>
 <20200417185049.275845-3-mike.kravetz@oracle.com>
 <7583dfcc-62d8-2a54-6eef-bcb4e01129b3@gmail.com>
 <5a380060-38db-b690-1003-678ca0f28f07@oracle.com>
Message-ID: <b1f04f9f-fa46-c2a0-7693-4a0679d2a1ee@oracle.com>
Date: Mon, 27 Apr 2020 12:09:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <5a380060-38db-b690-1003-678ca0f28f07@oracle.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9604
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 phishscore=0 suspectscore=0
 mlxlogscore=999 malwarescore=0 bulkscore=0 spamscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004270154
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9604
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 clxscore=1015
 bulkscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 mlxscore=0 suspectscore=0 mlxlogscore=999 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004270154
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_121129_209985_55B45D31 
X-CRM114-Status: GOOD (  28.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Longpeng <longpeng2@huawei.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Vasily Gorbik <gor@linux.ibm.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Nitesh Narayan Lal <nitesh@redhat.com>, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S.Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On 4/27/20 10:25 AM, Mike Kravetz wrote:
> On 4/26/20 10:04 PM, Sandipan Das wrote:
>> On 18/04/20 12:20 am, Mike Kravetz wrote:
>>> Now that architectures provide arch_hugetlb_valid_size(), parsing
>>> of "hugepagesz=" can be done in architecture independent code.
>>
>> This isn't working as expected on powerpc64.
>>
>>   [    0.000000] Kernel command line: root=UUID=dc7b49cf-95a2-4996-8e7d-7c64ddc7a6ff hugepagesz=16G hugepages=2 
>>   [    0.000000] HugeTLB: huge pages not supported, ignoring hugepagesz = 16G
>>   [    0.000000] HugeTLB: huge pages not supported, ignoring hugepages = 2
>>   [    0.284177] HugeTLB registered 16.0 MiB page size, pre-allocated 0 pages
>>   [    0.284182] HugeTLB registered 16.0 GiB page size, pre-allocated 0 pages
>>   [    2.585062]     hugepagesz=16G
>>   [    2.585063]     hugepages=2
>>
> 
> In the new arch independent version of hugepages_setup, I added the following
> code in patch 4 off this series:
> 
>> +	if (!hugepages_supported()) {
>> +		pr_warn("HugeTLB: huge pages not supported, ignoring hugepages = %s\n", s);
>> +		return 0;
>> +	}
>> +
> 
> The easy solution is to remove all the hugepages_supported() checks from
> command line parsing routines and rely on the later check in hugetlb_init().

Here is a patch to address the issue.  Sorry, as my series breaks all hugetlb
command line processing on powerpc.

Sandipan, can you test the following patch?

From 480fe2847361e2a85aeec1fb39fe643bb7100a07 Mon Sep 17 00:00:00 2001
From: Mike Kravetz <mike.kravetz@oracle.com>
Date: Mon, 27 Apr 2020 11:37:30 -0700
Subject: [PATCH] hugetlbfs: fix changes to command line processing

Previously, a check for hugepages_supported was added before processing
hugetlb command line parameters.  On some architectures such as powerpc,
hugepages_supported() is not set to true until after command line
processing.  Therefore, no hugetlb command line parameters would be
accepted.

Remove the additional checks for hugepages_supported.  In hugetlb_init,
print a warning if !hugepages_supported and command line parameters were
specified.

Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
---
 mm/hugetlb.c | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/mm/hugetlb.c b/mm/hugetlb.c
index 1075abdb5717..5548e8851b93 100644
--- a/mm/hugetlb.c
+++ b/mm/hugetlb.c
@@ -3212,8 +3212,11 @@ static int __init hugetlb_init(void)
 {
 	int i;
 
-	if (!hugepages_supported())
+	if (!hugepages_supported()) {
+		if (hugetlb_max_hstate || default_hstate_max_huge_pages)
+			pr_warn("HugeTLB: huge pages not supported, ignoring associated command-line parameters\n");
 		return 0;
+	}
 
 	/*
 	 * Make sure HPAGE_SIZE (HUGETLB_PAGE_ORDER) hstate exists.  Some
@@ -3315,11 +3318,6 @@ static int __init hugepages_setup(char *s)
 	unsigned long *mhp;
 	static unsigned long *last_mhp;
 
-	if (!hugepages_supported()) {
-		pr_warn("HugeTLB: huge pages not supported, ignoring hugepages = %s\n", s);
-		return 0;
-	}
-
 	if (!parsed_valid_hugepagesz) {
 		pr_warn("HugeTLB: hugepages=%s does not follow a valid hugepagesz, ignoring\n", s);
 		parsed_valid_hugepagesz = true;
@@ -3372,11 +3370,6 @@ static int __init hugepagesz_setup(char *s)
 	struct hstate *h;
 
 	parsed_valid_hugepagesz = false;
-	if (!hugepages_supported()) {
-		pr_warn("HugeTLB: huge pages not supported, ignoring hugepagesz = %s\n", s);
-		return 0;
-	}
-
 	size = (unsigned long)memparse(s, NULL);
 
 	if (!arch_hugetlb_valid_size(size)) {
@@ -3424,11 +3417,6 @@ static int __init default_hugepagesz_setup(char *s)
 	unsigned long size;
 
 	parsed_valid_hugepagesz = false;
-	if (!hugepages_supported()) {
-		pr_warn("HugeTLB: huge pages not supported, ignoring default_hugepagesz = %s\n", s);
-		return 0;
-	}
-
 	if (parsed_default_hugepagesz) {
 		pr_err("HugeTLB: default_hugepagesz previously specified, ignoring %s\n", s);
 		return 0;
-- 
2.25.4


