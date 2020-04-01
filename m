Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC21319B5CC
	for <lists+linux-riscv@lfdr.de>; Wed,  1 Apr 2020 20:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4EuKkI1FgDUHa7f3yhLdd4Qr6gCWZ73+BoGG9fGqtWQ=; b=ZE4Q9Gs4MtYAMy
	aPhSAzKFBrlecQfMb2ugoWuRPEderJRRIJZVvmXhkWY/9WVWW6M/YLwgqO0obZ6t8JRZ0LVgWCSYl
	hKmAoiEXAKyOldbQM5oiMLlLKYtGTmIex4AOusypy4LtXhEu21hX+eyXOb+l6qEjoSxGJJxr5Ig9A
	r14c47dpzTejxUUR8bPWOruUdAtcJwjpr+9FBbYAoKMUjK2YD+c1eXb3d74C0wzbxO99J0uKykLEs
	EZZAAoQxkfk5AWdcuqFDZpMWWkdvi3Nixign0pS3ekBVemdXPKOXQ9XtDlGFsppJE4tr0+XA3xLxL
	/NyuzMo9t+9Up2sp+55A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJiIc-0005zX-3j; Wed, 01 Apr 2020 18:41:14 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJiIX-0005xy-U4; Wed, 01 Apr 2020 18:41:12 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 031IdZbN048822;
 Wed, 1 Apr 2020 18:40:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : to : cc :
 subject : date : message-id : mime-version : content-transfer-encoding;
 s=corp-2020-01-29; bh=4EuKkI1FgDUHa7f3yhLdd4Qr6gCWZ73+BoGG9fGqtWQ=;
 b=bpaHX75zugPD8IcwwEfSwAZbX185+ocOT3IiOb2MByRjSddFi1VkEHG5DHv2i/lw8ub1
 qL/CsXFLjShsUv3XIAVdC3XGYVkqi5triEUjloAr5MhE6nUvx2mF0mr9Q7QKkwbAwdvG
 MjlsdMz3TWMp02m7GRhcDcB+kBIQqSUySU145aU8eS50Ruka9n0juY1Wx6Iq3z9eFSGh
 MBAseM+pRUmcAB+jJzf2pYQu1BeWxgfmCZmMpHP7Dmr9WaC0X7+OpSMLN5fvOu5xJ0iG
 S9/pW8B89OAxwBZebuunnT8UJvC1XouGuocqs60tWdy65mV3b0a5wlfCV8RKGQUO1mPj Tw== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 303yun9sh2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 01 Apr 2020 18:40:38 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 031IcWdc176892;
 Wed, 1 Apr 2020 18:38:37 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 302ga0ym75-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 01 Apr 2020 18:38:37 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 031IcSj8006092;
 Wed, 1 Apr 2020 18:38:28 GMT
Received: from monkey.oracle.com (/71.63.128.209)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 01 Apr 2020 11:38:28 -0700
From: Mike Kravetz <mike.kravetz@oracle.com>
To: linux-mm@kvack.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-riscv@lists.infradead.org, linux-s390@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-doc@vger.kernel.org
Subject: [PATCH v2 0/4] Clean up hugetlb boot command line processing
Date: Wed,  1 Apr 2020 11:38:15 -0700
Message-Id: <20200401183819.20647-1-mike.kravetz@oracle.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 mlxlogscore=999 bulkscore=0 mlxscore=0 spamscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004010151
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9578
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 lowpriorityscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 mlxlogscore=999 bulkscore=0
 suspectscore=0 mlxscore=0 spamscore=0 impostorscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004010150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_114110_077873_E52C7F7D 
X-CRM114-Status: GOOD (  18.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mina Almasry <almasrymina@google.com>, Albert Ou <aou@eecs.berkeley.edu>,
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

v2 -
   Fix build errors with patch 1 (Will)
   Change arch_hugetlb_valid_size arg to unsigned long and remove
     irrelevant 'extern' keyword (Christophe)
   Documentation and other misc changes (Randy, Christophe, Mina)
   Do not process command line options if !hugepages_supported()
     (Dave, but it sounds like we may want to additional changes to
      hugepages_supported() for x86?  If that is needed I would prefer
      a separate patch.)

Longpeng(Mike) reported a weird message from hugetlb command line processing
and proposed a solution [1].  While the proposed patch does address the
specific issue, there are other related issues in command line processing.
As hugetlbfs evolved, updates to command line processing have been made to
meet immediate needs and not necessarily in a coordinated manner.  The result
is that some processing is done in arch specific code, some is done in arch
independent code and coordination is problematic.  Semantics can vary between
architectures.

The patch series does the following:
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

 .../admin-guide/kernel-parameters.txt         |  35 +++--
 Documentation/admin-guide/mm/hugetlbpage.rst  |  44 ++++++
 arch/arm64/include/asm/hugetlb.h              |   2 +
 arch/arm64/mm/hugetlbpage.c                   |  30 +---
 arch/powerpc/include/asm/hugetlb.h            |   3 +
 arch/powerpc/mm/hugetlbpage.c                 |  30 ++--
 arch/riscv/include/asm/hugetlb.h              |   3 +
 arch/riscv/mm/hugetlbpage.c                   |  24 +--
 arch/s390/include/asm/hugetlb.h               |   3 +
 arch/s390/mm/hugetlbpage.c                    |  24 +--
 arch/sparc/include/asm/hugetlb.h              |   3 +
 arch/sparc/mm/init_64.c                       |  43 ++----
 arch/x86/include/asm/hugetlb.h                |   5 +
 arch/x86/mm/hugetlbpage.c                     |  23 +--
 include/linux/hugetlb.h                       |   8 +-
 mm/hugetlb.c                                  | 141 ++++++++++++++----
 16 files changed, 252 insertions(+), 169 deletions(-)

-- 
2.25.1


