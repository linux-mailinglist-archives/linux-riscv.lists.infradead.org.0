Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25BD4100F0F
	for <lists+linux-riscv@lfdr.de>; Mon, 18 Nov 2019 23:57:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L54FFwbBTWp10VhGjm88bnd6lic4tqUSVB4FAeCrJdo=; b=aSqKBH4bOXUkh7
	GN0SiOx4EnfjUiTqYe13Vw2SJmz/coebBKHy3j5nKqdSdc4GqWj8LYh7XHb+2L4hnKgwUT6lGpQY+
	RtGj5sJg3dDfKdLg6Qsvn2uExIwX7U9ITCpUcW4A6XbDKwJH1MUeM6cfW4+0EBpMQUD5zeilmwWte
	Xn4OT6cAVNWrl9yz/PsYqocXbrlv47LpGf9jQATNtRPLT8B+orI786IDL4n9eaV63r9XXcByYlwNR
	0W60OSzhZtWTBf4DEfMN2ShPz7dnYENN9UfiKljETTDtMvhAsKHuwMnnnHKpKkEOBwjCsV7f11PjH
	1tE4cqn1wu1I7bPLVu7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWpxJ-0007Ht-4y; Mon, 18 Nov 2019 22:57:13 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWpxD-0007G9-Gq
 for linux-riscv@lists.infradead.org; Mon, 18 Nov 2019 22:57:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574117827; x=1605653827;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZSd0SXCN7idLHbRMIPaxb2QJs2P5ieiyu0O1EqyLi4M=;
 b=DxXCw3DCWuMb5HAR/NNmVm+qnSiMu2yql4NkZJVT9m0VWwbEd0wXLueQ
 /ZATT5yRFJx/6XpT8LhaPFQCyvEupJG2c4zdG9xs2i7rFXJhnaVEw9z7w
 bImyhWTxTiEugs7b+QVXi3xPO9niN60V4NLeXbTJBKy/5+MRGiO5hFe3e
 LRunoVOAei6qNoF77u+ooFxgP+fbhsRbMzhh1u1BvB9n6hCMSYy1TW4VU
 LDDlV9JFyIzicmD2C7r+lbzcfo2aVq8I5RdoI/MzVeBfPJejdTPYFbr5W
 BvDn7GAcKNX0MbZEHkdYlvqMgPBidTENvxlKO72sK0lsaqGEP0tN08Xkn w==;
IronPort-SDR: kakPJ9FQUPuL1FuMepy/1KZc8HLEzDIOOMxOwKf4/w+6ux4p1t+IEa29a52+CbfCeP4DPEo0I0
 4HlDhcTYiY2I5+wsJFQWroUdNq78OqcQ1R2Y3ZUz3y3Xs5CE8oa8030oEek80wxO1tXWeji/qL
 2J6/cKCwq0Qhsb07ktFudM5ZBzQjABodvzr0FCc5ht82ktuK0j4KL0M3Q56NokjYheCETIP3hG
 eyT6XYARF/4RYjGn9dl7Mo6At2KFOR2Ip5fFGRFBUJ9PUhQiL2+UFoQuin5NuZQDfH0zsxOFC3
 tgk=
X-IronPort-AV: E=Sophos;i="5.68,321,1569254400"; d="scan'208";a="124142821"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 19 Nov 2019 06:57:05 +0800
IronPort-SDR: l9A42irah0wUGPu+s7Ukw9exgGVfrdRxVCI1SEdiez/X/HltmwGytcSwze1/FkU2M6t7b7orBq
 FC6xL26eEI0g6TBQAHIqpCYVOLUsbRfxfBW+ADX4eLQOcyayKUUrwXIrN8Z7BHClqd9zJalSwe
 Fpc91VwE1KrIzRH1zlJQYzBSR+JEEkt3RAj6ye4JPfsay/Dnbr8pOmgJEsp+w07UoIvY9S6mOz
 G4MBvzIAjugjA22AtEquRRWIU1RQJujjvA16Atec4XYtnNzHHket8AXRIo4zwLvdLgS2/r14pP
 qLKWldmpA5DG6yVlf83/alP7
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2019 14:52:18 -0800
IronPort-SDR: qEANtRlkmrDMPzgx7tEIrskIgOOSkeJZpMLrMl0c5nehwBZrpa50yA007yiWapUAVHLs2Yp65d
 a9Zuds8hI0DHa79xVLqdxwMSzJT7f5m9KtXg/n1kSicrea2VRrzApEO2krMpmzpjZCIs4mkyFT
 Awi+GcDMxOffBQQ8NjaMU7DYmgwKedqCUdbGXOfk0TZ0qn4FsjT4eOvg2DqJ1Wwwzifo2WhBMv
 tL7JPo6OLxnI+9wsUWhgTq0znQDA6Io9Hx93YGB2/62aAvIzPJK0U7eaoPR71+c+iiovChc+cl
 9qY=
WDCIronportException: Internal
Received: from yoda.sdcorp.global.sandisk.com (HELO yoda.int.fusionio.com)
 ([10.196.158.237])
 by uls-op-cesaip02.wdc.com with ESMTP; 18 Nov 2019 14:57:06 -0800
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] Add support for SBI v0.2 
Date: Mon, 18 Nov 2019 14:45:35 -0800
Message-Id: <20191118224539.2171-1-atish.patra@wdc.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_145707_569339_41CA7AE3 
X-CRM114-Status: GOOD (  10.24  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Alexios Zavras <alexios.zavras@intel.com>, Anup Patel <anup@brainfault.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Atish Patra <atish.patra@wdc.com>,
 Jonathan Behrens <behrensj@mit.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 Mao Han <han_mao@c-sky.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The Supervisor Binary Interface(SBI) specification[1] now defines a
base extension that provides extendability to add future extensions
while maintaining backward compatibility with previous versions.
The new version is defined as 0.2 and older version is marked as 0.1.

This series adds support v0.2 and a unified calling convention
implementation between 0.1 and 0.2. It also adds minimal SBI functions
from 0.2 as well to keep the series lean. 

[1] https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc

The base support for SBI v0.2 is already available in OpenSBI v0.5.
This series needs following additional patches in OpenSBI. 

http://lists.infradead.org/pipermail/opensbi/2019-November/000704.html

Tested on both BBL, OpenSBI with/without the above patch series. 

Changes from v2->v3.
1. Moved v0.1 extensions to a new config.
2. Added support for relacement extensions of v0.1 extensions.

Changes from v1->v2
1. Removed the legacy calling convention.
2. Moved all SBI related calls to sbi.c.
3. Moved all SBI related macros to uapi.

Atish Patra (4):
RISC-V: Mark existing SBI as 0.1 SBI.
RISC-V: Add basic support for SBI v0.2
RISC-V: Introduce a new config for SBI v0.1
RISC-V: Implement SBI v0.2 replacement extensions

arch/riscv/Kconfig           |   6 +
arch/riscv/include/asm/sbi.h | 163 +++++++++--------
arch/riscv/kernel/Makefile   |   1 +
arch/riscv/kernel/sbi.c      | 330 +++++++++++++++++++++++++++++++++++
arch/riscv/kernel/setup.c    |   2 +
5 files changed, 431 insertions(+), 71 deletions(-)
create mode 100644 arch/riscv/kernel/sbi.c

--
2.23.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
