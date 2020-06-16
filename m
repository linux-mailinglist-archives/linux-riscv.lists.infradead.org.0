Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E70B1FB425
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jun 2020 16:23:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3EuoTMmc8y+6eZzzuYKW/xuo4nAOk0fa1sbLT7moZAk=; b=MjY
	CboH8yl2UgRHXwm1UPn2H096qrHgSS7r3P1GBuMLW9RZcmThb+GLQwRcHxQhvyKwols5A4y1rXfbb
	PfVQQOr161zSq9mbcN7FuORly9jtN7LzjOf24/y+pLmik70z82UPoSSkRFsbqz+YKNi7KwZrBLEtR
	XJqq0572fasutFiB699D0eR2LjRvk38JCNjSzqIEvSGJH5JO0jlv6AxEjgRq98eXME4QkOKwvIEHS
	jJTtV56qScYs/5HuOfrRilRhiMyhFTU6Tdwb2novJwInvnPco2149RPaGGfq4FhAaNRREf8yroIHr
	mxMPiUKHUYFRCWrKQnuPaCLyTnqwA6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCUQ-0004Cm-8M; Tue, 16 Jun 2020 14:23:02 +0000
Received: from mail-co1nam11on2048.outbound.protection.outlook.com
 ([40.107.220.48] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlCC4-00051B-4N
 for linux-riscv@lists.infradead.org; Tue, 16 Jun 2020 14:04:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OIXtWWtteDbzqGtxZkzLdf9jZcWwoS+boSmJZjU2kTUU8kwBOXteg5LUgccM/Xax2f6rvwKxOyuuNZtnwenv6ZxjUQv2z5evgZcSzD8NcMbaunH8sbm61VLGCU5JLwa6ig+94jJxxr6r5tlCzcbTrSpcVVeQBOLMUqVJANeBeUCWa9vWt/R54PxV3AUeMxSL40j6MZxGNtEq+Js92CWKP5fjM5b8qOd2LnAunyHvaCHZrljfBJCdmlEkLxB99b7J4SuHzkv3NbP9X5zc/D+v14hls12SDnekbwZAkDUAba4SYZVtU0253yIEJOQavVADQJYkKjY3tzo61SaL5xMeUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3EuoTMmc8y+6eZzzuYKW/xuo4nAOk0fa1sbLT7moZAk=;
 b=jcY5Dq3O0ShE6P3Xf+kIdcDEGfxr0AkLndnFeduRP9orUXV0MUoR0cxUGJ+ME4IOocTNgdoFOAwnEw076Sokyf3Brq/wlvU51AcHJgKumwfvCbJ1mfo0sEDy+oTles1KIdWVBduJ+NYD+0o2BDeORHYs+BEBnhwqXk1+3vWAkeD6xQWPzCOsFklQ2AvU9uakflCJH3xJVYxy0oCqqM1T3WwVeuwB33hGNTEDi44KbGKQlCGxZm49sFZ3z0NQi9awugaO4WIYPCcUmjXo0X30nkESInqBw62gV7kK5eDlOX9k8aBI1T3sXdJtjyx1DGOo2VngvBb6DJitK6uUD+vpQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3EuoTMmc8y+6eZzzuYKW/xuo4nAOk0fa1sbLT7moZAk=;
 b=VwwU5aVG7in61OnrE+0Vxli4zysRtdOv0l+LsYIVzk88B5oQqQm6fC0/R6IObl+y+Ph6/41CpKhLsc5wfyd0gXDmHAa95HNmHvZLsO/58CshN6qIepBXaXlghCvJ4VwqKACpRIFHz46OFDT/ySQrPtAuhz+9COP7yjx84vB9oos=
Authentication-Results: sifive.com; dkim=none (message not signed)
 header.d=none;sifive.com; dmarc=none action=none header.from=sifive.com;
Received: from BN6PR1301MB2020.namprd13.prod.outlook.com
 (2603:10b6:405:34::34) by BN6PR13MB0866.namprd13.prod.outlook.com
 (2603:10b6:404:4::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.13; Tue, 16 Jun
 2020 14:04:00 +0000
Received: from BN6PR1301MB2020.namprd13.prod.outlook.com
 ([fe80::68f2:768a:7a8b:e790]) by BN6PR1301MB2020.namprd13.prod.outlook.com
 ([fe80::68f2:768a:7a8b:e790%7]) with mapi id 15.20.3109.018; Tue, 16 Jun 2020
 14:04:00 +0000
From: Yash Shah <yash.shah@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] RISC-V: Don't allow write+exec only page mapping request in
 mmap
Date: Tue, 16 Jun 2020 19:33:06 +0530
Message-Id: <1592316186-1420-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: SG2PR0401CA0008.apcprd04.prod.outlook.com
 (2603:1096:3:1::18) To BN6PR1301MB2020.namprd13.prod.outlook.com
 (2603:10b6:405:34::34)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from osubuntu003.open-silicon.com (159.117.144.156) by
 SG2PR0401CA0008.apcprd04.prod.outlook.com (2603:1096:3:1::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3109.22 via Frontend Transport; Tue, 16 Jun 2020 14:03:57 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [159.117.144.156]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 20302512-843b-47f7-b815-08d811fe1e2c
X-MS-TrafficTypeDiagnostic: BN6PR13MB0866:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BN6PR13MB086697033160FF574A85F7188C9D0@BN6PR13MB0866.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 04362AC73B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m/W1Rt0S2egAN6uiZeT1ceL90ITJekJr/gC50u/lxxk9Z1pgrx4Vlloh7WdzD2xuzd0Jjqx5QRk9ab7+wOuWHiyQnOb9tkajY3HAP28GdQiZE3csmOH2G28YmQN98Fb1oUl1Z5Vo3VSbfoRSl/evyfIHigEdbKzP+eisUSXMfqN7/rJ7Mv7bTyt2V9lEhPR19598edpcIdRbI2iEaaCMoxkmKle++NLTBXtNCOb+aWxgyxivdE5NsVqYIpA+zaMgydVXdzdeL0N7GOuN2hw334Oj55hgbUCvxehsVy0ni7OvV3CC6Zt8WvK4XmbvN0A+l4JI3f+TS8E0HKrJjgI+BNkTqV06nqRWSQUknQLrg1362aB7DdNZWDjdZt9crDLFC71IGTXxfg0b2IQESqpRbA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1301MB2020.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(39840400004)(376002)(366004)(396003)(346002)(52116002)(8936002)(6666004)(26005)(6486002)(86362001)(6512007)(2906002)(316002)(8676002)(4326008)(478600001)(966005)(36756003)(5660300002)(83380400001)(107886003)(956004)(16526019)(186003)(66556008)(6506007)(44832011)(2616005)(66946007)(66476007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: i23e5WdMWwyJkd5Y4dEL+qEz6AjYUtGCzc+lqWq+vVCrkF1YBkssyglKjZ5ic2YROsiq1uQtvVdckX+LqOyR9Fii/NVoeMmqpfwgABcg5lULiMus5IUZTzComXRGmNU2soKg9W1ar10c+ggbIzaGV80ZKmFHX+muJqUM3Pyc0Iwx29WhRsQX+9roMN/wckFl7WGs3kCZti4lS8hdK4EtnFMZmFmn1AhgY8BZqwY3MTF6duTZiAV9rKg633qsNsphI+f1KQLIxTTUxqR1og3bpdEnsWsyUNgaYi7zU52C6ItHI4uViWtUjmy373snZbGSihtIG7fMaDFxODfF9poNWd4MUc5UOshPY/X5sMZkznVWopfV3FdjBj1GKzQaOoGDD0u5KIlEQNySMULTJB5kxyqRc7hlXQxgtyEmklNNz+dowAik/QlO4xPR05jzXcwGYlgSMDZ37nMp0+j2ubP2eXyAB7daJAawCLayhDFGEdU=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20302512-843b-47f7-b815-08d811fe1e2c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2020 14:04:00.2495 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pk7MlXFFsQl/Dhk/PKBYsNl2jDOVLCQEjK4GDkase2jpQfLt1Vr3zN8OaZVLggWxqj8cjkZpdaFv+QEb5sVfsA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR13MB0866
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_070404_326210_39FF19FB 
X-CRM114-Status: UNSURE (   6.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.48 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.48 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: colin.king@canonical.com, Yash Shah <yash.shah@sifive.com>,
 aou@eecs.berkeley.edu, david.abdurachmanov@gmail.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

As per the table 4.2 of the RISC-V instruction set manual[0], the PTE
permission bit combination of "write+exec only" is invalid and reserved
for future use. Hence, don't allow such mapping request in mmap call.

An issue is been reported by David Abdurachmanov, that while running
stress-ng with "sysbadaddr" argument, RCU stalls are observed on RISC-V
specific kernel.

This issue arises when the stress-sysbadaddr request for pages with
"write+exec only" permission bits and then passes the address obtain
from this mmap call to various system call. For the riscv kernel, the
mmap call should fail for this particular combination of permission bits
since it's not valid.

[0]: https://www2.eecs.berkeley.edu/Pubs/TechRpts/2016/EECS-2016-161.pdf

Signed-off-by: Yash Shah <yash.shah@sifive.com>
Reported-by: David Abdurachmanov <david.abdurachmanov@gmail.com>
---
 arch/riscv/kernel/sys_riscv.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
index f3619f5..12f8a7f 100644
--- a/arch/riscv/kernel/sys_riscv.c
+++ b/arch/riscv/kernel/sys_riscv.c
@@ -8,6 +8,7 @@
 #include <linux/syscalls.h>
 #include <asm/unistd.h>
 #include <asm/cacheflush.h>
+#include <asm-generic/mman-common.h>
 
 static long riscv_sys_mmap(unsigned long addr, unsigned long len,
 			   unsigned long prot, unsigned long flags,
@@ -16,6 +17,11 @@ static long riscv_sys_mmap(unsigned long addr, unsigned long len,
 {
 	if (unlikely(offset & (~PAGE_MASK >> page_shift_offset)))
 		return -EINVAL;
+
+	if ((prot & PROT_WRITE) && (prot & PROT_EXEC))
+		if (unlikely(!(prot & PROT_READ)))
+			return -EINVAL;
+
 	return ksys_mmap_pgoff(addr, len, prot, flags, fd,
 			       offset >> (PAGE_SHIFT - page_shift_offset));
 }
-- 
2.7.4


