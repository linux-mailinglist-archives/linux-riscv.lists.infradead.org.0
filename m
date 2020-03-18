Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD47818A7A7
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 23:08:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ox5qUf5D6WTBPl3rtmnft5xufOmx+0Hi+IA1Hia8V2k=; b=ssFNLA340Y51Gs
	1jgcfqBlbj/OK4OZb2UmJqmNtddO5Cbyj9u4jZjM133HKhvuvZe3a1PfvP6y89dahTIQhU/hiWWwN
	g5dj8FeIek390q+bvOGe/6SJMXJTdgvGPHbTvtpQeodHt1BnMg9v/Jeb75qfCAczWqpY/DXFnTLNR
	cKitjjSwQgcyZ941X9bEBsGeiIS3WCqse+f/I4QXQI09FcwPF/CM5NdQr2sDEnw8Y1rXjp6noETkQ
	ejn5hXZ3S4sSzmfJCWozzcmGkWUTd35RKg7INb/PYxs78Hs2lTe5gmx+7JoZBse98e0zhjo/vmYYj
	X8C16JiG7jkDkeQ/IHGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEgrp-0006Bd-BO; Wed, 18 Mar 2020 22:08:49 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEgrj-00069E-31; Wed, 18 Mar 2020 22:08:44 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02ILx6Gx105391;
 Wed, 18 Mar 2020 22:06:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=corp-2020-01-29;
 bh=ox5qUf5D6WTBPl3rtmnft5xufOmx+0Hi+IA1Hia8V2k=;
 b=j7RRCoSXNAacP2Bdds6O491TkrTiNOQIhpKAKir7hYE4YlJ8R5R+doFi0DEojOtv5YXd
 YoC2mTGkjKoYJ9jSfBQLMLmFdMHhpY8+ULqmaJs9rXHaz0GEEeWIUzhIqwo0DQzYS7Qy
 LkcKiJ8WrfXBaoxPftbsO9YBUFDsfAZSWtwtCmrl553kTOu/+zjx5CKpSrP6u53wNCG8
 ZDKkD0UlRXN6KRUmggXuXx4btzi6xthw81ykExv6hmWxQX0KaWrjQ8Pnu/s7SXc/xJXY
 IomP50Dc4YOFdKfqFmiNfMKaXX4F9kZrq90uIP9+Vu1nJRbEJP5c+d9Rqb5uA0KZoHJq WQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2yrpprd9m7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Mar 2020 22:06:59 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02ILv9Oq058865;
 Wed, 18 Mar 2020 22:06:58 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2ys8tuteuj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Mar 2020 22:06:58 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 02IM6vVZ006849;
 Wed, 18 Mar 2020 22:06:57 GMT
Received: from monkey.oracle.com (/71.63.128.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 18 Mar 2020 15:06:57 -0700
From: Mike Kravetz <mike.kravetz@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-riscv@lists.infradead.org, linux-s390@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-doc@vger.kernel.org
Subject: [PATCH 4/4] hugetlbfs: clean up command line processing
Date: Wed, 18 Mar 2020 15:06:34 -0700
Message-Id: <20200318220634.32100-5-mike.kravetz@oracle.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200318220634.32100-1-mike.kravetz@oracle.com>
References: <20200318220634.32100-1-mike.kravetz@oracle.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9564
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 phishscore=0 mlxscore=0
 malwarescore=0 suspectscore=0 mlxlogscore=999 spamscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003180094
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9564
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 bulkscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 adultscore=0 clxscore=1015
 impostorscore=0 priorityscore=1501 spamscore=0 mlxlogscore=999 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2003180094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_150843_174961_45ADC915 
X-CRM114-Status: GOOD (  27.25  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Albert Ou <aou@eecs.berkeley.edu>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Andrew Morton <akpm@linux-foundation.org>, Vasily Gorbik <gor@linux.ibm.com>,
 Jonathan Corbet <corbet@lwn.net>, Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Paul Mackerras <paulus@samba.org>, Thomas Gleixner <tglx@linutronix.de>,
 Longpeng <longpeng2@huawei.com>, Will Deacon <will@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Mike Kravetz <mike.kravetz@oracle.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

With all hugetlb page processing done in a single file clean up code.
- Make code match desired semantics
  - Update documentation with semantics
- Make all warnings and errors messages start with 'HugeTLB:'.
- Consistently name command line parsing routines.
- Add comments to code
  - Describe some of the subtle interactions
  - Describe semantics of command line arguments

Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
---
 Documentation/admin-guide/mm/hugetlbpage.rst | 26 +++++++
 mm/hugetlb.c                                 | 78 +++++++++++++++-----
 2 files changed, 87 insertions(+), 17 deletions(-)

diff --git a/Documentation/admin-guide/mm/hugetlbpage.rst b/Documentation/admin-guide/mm/hugetlbpage.rst
index 1cc0bc78d10e..afc8888f33c3 100644
--- a/Documentation/admin-guide/mm/hugetlbpage.rst
+++ b/Documentation/admin-guide/mm/hugetlbpage.rst
@@ -100,6 +100,32 @@ with a huge page size selection parameter "hugepagesz=<size>".  <size> must
 be specified in bytes with optional scale suffix [kKmMgG].  The default huge
 page size may be selected with the "default_hugepagesz=<size>" boot parameter.
 
+Hugetlb boot command line parameter semantics
+hugepagesz - Specify a huge page size.  Used in conjunction with hugepages
+	parameter to preallocate a number of huge pages of the specified
+	size.  Hence, hugepagesz and hugepages are typically specified in
+	pairs such as:
+		hugepagesz=2M hugepages=512
+	hugepagesz can only be specified once on the command line for a
+	specific huge page size.  Valid huge page sizes are architecture
+	dependent.
+hugepages - Specify the number of huge pages to preallocate.  This typically
+	follows a valid hugepagesz parameter.  However, if hugepages is the
+	first or only hugetlb command line parameter it specifies the number
+	of huge pages of default size to allocate.  The number of huge pages
+	of default size specified in this manner can be overwritten by a
+	hugepagesz,hugepages parameter pair for the default size.
+	For example, on an architecture with 2M default huge page size:
+		hugepages=256 hugepagesz=2M hugepages=512
+	will result in 512 2M huge pages being allocated.  If a hugepages
+	parameter is preceded by an invalid hugepagesz parameter, it will
+	be ignored.
+default_hugepagesz - Specify the default huge page size.  This parameter can
+	only be specified on the command line.  No other hugetlb command line
+	parameter is associated with default_hugepagesz.  Therefore, it can
+	appear anywhere on the command line.  Valid default huge page size is
+	architecture dependent.
+
 When multiple huge page sizes are supported, ``/proc/sys/vm/nr_hugepages``
 indicates the current number of pre-allocated huge pages of the default size.
 Thus, one can use the following command to dynamically allocate/deallocate
diff --git a/mm/hugetlb.c b/mm/hugetlb.c
index cc85b4f156ca..2b9bf01db2b6 100644
--- a/mm/hugetlb.c
+++ b/mm/hugetlb.c
@@ -2954,7 +2954,7 @@ static void __init hugetlb_sysfs_init(void)
 		err = hugetlb_sysfs_add_hstate(h, hugepages_kobj,
 					 hstate_kobjs, &hstate_attr_group);
 		if (err)
-			pr_err("Hugetlb: Unable to add hstate %s", h->name);
+			pr_err("HugeTLB: Unable to add hstate %s", h->name);
 	}
 }
 
@@ -3058,7 +3058,7 @@ static void hugetlb_register_node(struct node *node)
 						nhs->hstate_kobjs,
 						&per_node_hstate_attr_group);
 		if (err) {
-			pr_err("Hugetlb: Unable to add hstate %s for node %d\n",
+			pr_err("HugeTLB: Unable to add hstate %s for node %d\n",
 				h->name, node->dev.id);
 			hugetlb_unregister_node(node);
 			break;
@@ -3109,19 +3109,35 @@ static int __init hugetlb_init(void)
 	if (!hugepages_supported())
 		return 0;
 
-	if (!size_to_hstate(default_hstate_size)) {
-		if (default_hstate_size != 0) {
-			pr_err("HugeTLB: unsupported default_hugepagesz %lu. Reverting to %lu\n",
-			       default_hstate_size, HPAGE_SIZE);
-		}
-
+	/*
+	 * Make sure HPAGE_SIZE (HUGETLB_PAGE_ORDER) hstate exists.  Some
+	 * architectures depend on setup being done here.
+	 *
+	 * If a valid default huge page size was specified on the command line,
+	 * add associated hstate if necessary.  If not, set default_hstate_size
+	 * to default size.  default_hstate_idx is used at runtime to identify
+	 * the default huge page size/hstate.
+	 */
+	hugetlb_add_hstate(HUGETLB_PAGE_ORDER);
+	if (default_hstate_size)
+		hugetlb_add_hstate(ilog2(default_hstate_size) - PAGE_SHIFT);
+	else
 		default_hstate_size = HPAGE_SIZE;
-		hugetlb_add_hstate(HUGETLB_PAGE_ORDER);
-	}
 	default_hstate_idx = hstate_index(size_to_hstate(default_hstate_size));
+
+	/*
+	 * default_hstate_max_huge_pages != 0 indicates a count (hugepages=)
+	 * specified before a size (hugepagesz=).  Use this count for the
+	 * default huge page size, unless a specific value was specified for
+	 * this size in a hugepagesz/hugepages pair.
+	 */
 	if (default_hstate_max_huge_pages) {
 		if (!default_hstate.max_huge_pages)
-			default_hstate.max_huge_pages = default_hstate_max_huge_pages;
+			default_hstate.max_huge_pages =
+				default_hstate_max_huge_pages;
+		else
+			pr_warn("HugeTLB: First hugepages=%lu kB ignored\n",
+				default_hstate_max_huge_pages);
 	}
 
 	hugetlb_init_hstates();
@@ -3174,20 +3190,27 @@ void __init hugetlb_add_hstate(unsigned int order)
 	parsed_hstate = h;
 }
 
-static int __init hugetlb_nrpages_setup(char *s)
+/*
+ * hugepages command line processing
+ * hugepages must normally follows a valid hugepagsz specification.  If not,
+ * ignore the hugepages value.  hugepages can also be the first huge page
+ * command line option in which case it specifies the number of huge pages
+ * for the default size.
+ */
+static int __init hugepages_setup(char *s)
 {
 	unsigned long *mhp;
 	static unsigned long *last_mhp;
 
 	if (!parsed_valid_hugepagesz) {
-		pr_warn("hugepages = %s preceded by "
+		pr_warn("HugeTLB: hugepages = %s preceded by "
 			"an unsupported hugepagesz, ignoring\n", s);
 		parsed_valid_hugepagesz = true;
 		return 1;
 	}
 	/*
-	 * !hugetlb_max_hstate means we haven't parsed a hugepagesz= parameter yet,
-	 * so this hugepages= parameter goes to the "default hstate".
+	 * !hugetlb_max_hstate means we haven't parsed a hugepagesz= parameter
+	 * yet, so this hugepages= parameter goes to the "default hstate".
 	 */
 	else if (!hugetlb_max_hstate)
 		mhp = &default_hstate_max_huge_pages;
@@ -3195,7 +3218,8 @@ static int __init hugetlb_nrpages_setup(char *s)
 		mhp = &parsed_hstate->max_huge_pages;
 
 	if (mhp == last_mhp) {
-		pr_warn("hugepages= specified twice without interleaving hugepagesz=, ignoring\n");
+		pr_warn("HugeTLB: hugepages= specified twice without interleaving hugepagesz=, ignoring hugepages=%s\n",
+			s);
 		return 1;
 	}
 
@@ -3214,8 +3238,15 @@ static int __init hugetlb_nrpages_setup(char *s)
 
 	return 1;
 }
-__setup("hugepages=", hugetlb_nrpages_setup);
+__setup("hugepages=", hugepages_setup);
 
+/*
+ * hugepagesz command line processing
+ * A specific huge page size can only be specified once with hugepagesz.
+ * hugepagesz is followed by hugepages on the commnad line.  The global
+ * variable 'parsed_valid_hugepagesz' is used to determine if prior
+ * hugepagesz argument was valid.
+ */
 static int __init hugepagesz_setup(char *s)
 {
 	unsigned long long size;
@@ -3230,16 +3261,23 @@ static int __init hugepagesz_setup(char *s)
 	}
 
 	if (size_to_hstate(size)) {
+		parsed_valid_hugepagesz = false;
 		pr_warn("HugeTLB: hugepagesz %s specified twice, ignoring\n",
 			saved_s);
 		return 0;
 	}
 
+	parsed_valid_hugepagesz = true;
 	hugetlb_add_hstate(ilog2(size) - PAGE_SHIFT);
 	return 1;
 }
 __setup("hugepagesz=", hugepagesz_setup);
 
+/*
+ * default_hugepagesz command line input
+ * Only one instance of default_hugepagesz allowed on command line.  Do not
+ * add hstate here as that will confuse hugepagesz/hugepages processing.
+ */
 static int __init default_hugepagesz_setup(char *s)
 {
 	unsigned long long size;
@@ -3252,6 +3290,12 @@ static int __init default_hugepagesz_setup(char *s)
 		return 0;
 	}
 
+	if (default_hstate_size) {
+		pr_err("HugeTLB: default_hugepagesz previously specified, ignoring %s\n",
+			saved_s);
+		return 0;
+	}
+
 	default_hstate_size = size;
 	return 1;
 }
-- 
2.24.1


