Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 227EA18A7A3
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Mar 2020 23:08:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s1pMLzutcA2e/hf3OvlXjDnIfQPhs95bJayfMQOUxME=; b=jwZlFrj/czLyEU
	kPm17JfEgyzFtHwkhSsUvH3rvM1UD/c6v+KbNkpeawDdc4t1xiUnDC2YahFqQo0b3ZGUHYOjFAUvG
	NrUGrfv0hXnJ9ImCJODMeM26mS8j8oc/YRO9ccKmP9Vg6jY3jwUtF3VEdpkzO6iXyz9DXnOWATAbD
	MYIid1so2jXtLKSZ7HkxySx4sLQWhPu5ARKIBxB/KKzNqTqGdFkc1VsNLpoOsxBI5NUelYnZQguxV
	o095GUATm7UlhznxEXRb3m8PomHZdMQK/rlD7Xg94gYW9wbuTpz7Z5RbGHW/2S/B33bWRQBAfp2ka
	af/O1Kg5CfUGuDPAgztg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEgr8-0005Pc-Oi; Wed, 18 Mar 2020 22:08:06 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEgqS-0004nE-Ln; Wed, 18 Mar 2020 22:07:27 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02ILvmT0077845;
 Wed, 18 Mar 2020 22:06:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding;
 s=corp-2020-01-29; bh=s1pMLzutcA2e/hf3OvlXjDnIfQPhs95bJayfMQOUxME=;
 b=FGED8sOeZH7vZegY5KTbymmNwi6RTCwH53GlXQ5Z8MkOBREidu2uKWXTr9CUnP2UU50v
 3g9pxzX4LX+mJxpPSPbLQc/izyIzA+fNY73oaab+Qz5r/bAQFXTgx7cVJEFa7/X0KB78
 XCnEHj9Ydk/Ic9oK6rnyT2aVqigXRKtHnH2paGht1i7rne7tnwM1R80+f2oxcif+foMT
 rDa8RNHkxhUPTR8az1yINaNjXPsCSt/u24S704F9NM/VuprmE4UEARi6ZiQ9V6Z3VHvK
 DrZ9+i2u4c/OlxO+oxKkLXRY5Ilry1YPhe97NfHJpEnRTeflyxsWz/1/Z+NyJJskqQfv jg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2yub2753n1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Mar 2020 22:06:49 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 02ILuqsD058502;
 Wed, 18 Mar 2020 22:06:48 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 2ys8tutekx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 18 Mar 2020 22:06:48 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 02IM6fZG003470;
 Wed, 18 Mar 2020 22:06:41 GMT
Received: from monkey.oracle.com (/71.63.128.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 18 Mar 2020 15:06:41 -0700
From: Mike Kravetz <mike.kravetz@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-riscv@lists.infradead.org, linux-s390@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-doc@vger.kernel.org
Subject: [PATCH 0/4] Clean up hugetlb boot command line processing
Date: Wed, 18 Mar 2020 15:06:30 -0700
Message-Id: <20200318220634.32100-1-mike.kravetz@oracle.com>
X-Mailer: git-send-email 2.24.1
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
 impostorscore=0
 mlxlogscore=999 mlxscore=0 phishscore=0 adultscore=0 suspectscore=0
 clxscore=1011 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003180094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_150724_795013_DBFE2794 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
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

Longpeng(Mike) reported a weird message from hugetlb command line processing
and proposed a solution [1].  While the proposed patch does address the
specific issue, there are other related issues in command line processing.
As hugetlbfs evolved, updates to command line processing have been made to
meet immediate needs and not necessarily in a coordinated manner.  The result
is that some processing is done in arch specific code, some is done in arch
independent code and coordination is problematic.  Semantics can vary between
architectures.

The following patch series does the following:
- Define arch specific arch_hugetlb_valid_size routine used to validate
  passed huge page sizes.
- Move hugepagesz= command line parsing out of arch specific code and into
  an arch independent routine.
- Clean up command line processing to follow desired semantics and
  document those semantics.

[1] https://lore.kernel.org/linux-mm/20200305033014.1152-1-longpeng2@huawei.com

Mike Kravetz (4):
  hugetlbfs: add arch_hugetlb_valid_size
  hugetlbfs: move hugepagesz= parsing to arch independent code
  hugetlbfs: remove hugetlb_add_hstate() warning for existing hstate
  hugetlbfs: clean up command line processing

 Documentation/admin-guide/mm/hugetlbpage.rst |  26 ++++
 arch/arm64/include/asm/hugetlb.h             |   2 +
 arch/arm64/mm/hugetlbpage.c                  |  30 ++---
 arch/powerpc/include/asm/hugetlb.h           |   3 +
 arch/powerpc/mm/hugetlbpage.c                |  30 ++---
 arch/riscv/include/asm/hugetlb.h             |   3 +
 arch/riscv/mm/hugetlbpage.c                  |  24 ++--
 arch/s390/include/asm/hugetlb.h              |   3 +
 arch/s390/mm/hugetlbpage.c                   |  24 ++--
 arch/sparc/include/asm/hugetlb.h             |   3 +
 arch/sparc/mm/init_64.c                      |  42 ++-----
 arch/x86/include/asm/hugetlb.h               |   3 +
 arch/x86/mm/hugetlbpage.c                    |  23 ++--
 include/linux/hugetlb.h                      |   8 +-
 mm/hugetlb.c                                 | 126 ++++++++++++++-----
 15 files changed, 198 insertions(+), 152 deletions(-)

-- 
2.24.1


