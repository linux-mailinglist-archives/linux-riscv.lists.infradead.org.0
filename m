Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADA91B6CF5
	for <lists+linux-riscv@lfdr.de>; Fri, 24 Apr 2020 07:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xl6Gy1sZP6WITFuw1lylVY/qGiEL4U21EOf9JQzzjX0=; b=flXQbfPadMry8y7+ttUMe4PDu
	XqHeha6m53ey3+eHRCGXUZSBhQ+LQuOiVdeNbwv9/mAnEHPDVkW1dNcaNtQxRlmtU42WxHgCqqnsd
	GaYp7kuThKkLu+EXEmNhKHQhd4KDOZaToy3bPz66ZeAuTak94FgXprK5AbEudoi4i6nQt+coVlTzo
	ECTYQci+p+xORzrMTEaDX13bT6/03I+0wEi0xtbgx9TERkeKLDAC6IUZ7nXL4b+D3rYzXNXBAQFlM
	+ZnVMzRA08W4uP+HnZjd/Ba13FGYrnVuuUeu7J7re8HJsFSD7/7p8POKlG9nEpl0ZBmnTJVUo6J7T
	UwGT5fujw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRqRv-0008IG-ER; Fri, 24 Apr 2020 05:00:27 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRqRs-0008Fw-A0; Fri, 24 Apr 2020 05:00:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587704424; x=1619240424;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=9TZKFN70WqKudIvHylul3i6+8Yt2GNTWaHlG3fnfXc0=;
 b=JDys58qOMUfbCvL97UZBxH1/2gAErty12uEZPICDUlJ9TptR/Vaf5g1n
 LIgUB2q5uz5ead5rKO0mxDtPCqCpf9Ua8+uddcgNn7/YbilHrCweEYDAp
 6PGAW5Rkeo14cliHhxy/JF1p3WTHwD64LzOWiYlPPdkhN2wsWUz5BeSkv
 nCZnaUzB/lwZqZ2oqC0aIesL2S3kdoL5Se3aofSFRoUoXnzFeCj2vLkt2
 3efAUNJJbwT+VIENmyl0Az6LI5tb9u0jqqgjvYTgvAnACu+uwwb71qU53
 4Ko/M1wHqMhyPZmGbY1en916z2e+HtfyqUieQtxdK7InplR9hecBMiNzk g==;
IronPort-SDR: pVzrA5NqSJNBO8rvBgVn+hBIzHL3duMAjOuHp0XVDcwylpvY76U2ZoHQ8yGWi/nntNtAvJEcVc
 5m6gL6fWXAK95Mq4N+HqmOQTtND2F/1l9Er3e6EapKNN/eAQLdokAlx9zGhVimkVg2DdS5c7uw
 FD8TxZVpW6OyUVUdiSCuPLojfG0MVgFoJKjO9iWHQMNM5ku0mnqrtir8W90SOU1otABANzxtT0
 o0t0HYa6w0v10sZqxdi1958NS53GdK5WxYb8wkPI5T7B0pXoug/E+/BbdiVEQCFytEsGQb1ct3
 JHk=
X-IronPort-AV: E=Sophos;i="5.73,310,1583164800"; d="scan'208";a="136050477"
Received: from mail-co1nam11lp2174.outbound.protection.outlook.com (HELO
 NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.174])
 by ob1.hgst.iphmx.com with ESMTP; 24 Apr 2020 13:00:18 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cDn4YRN6y8wnq16UkMbsjUdamxXezpAs+DB8Fw3YXUg6m8jjmo5t65Pq7/pv7XI6QQcfeu4uMYWoX6p2hvHu8SkO5tx7H15vWDfCzr4MzvY0d82tYuqiRqHha04CaT7TnnPEBxhmS914dkOzIE6BhOziKQ9L0tyCONMy6CFnk/CAst30Jhf+toe76Y2hTiK0qvBj+bo+CZU//c5jtGFh9VngODJbgjGo78iec70Cuj2g8KL5mgNMzm1GIvHypypmrcNfTxL8yAFjb+OBwvQQJSFYR2v+GnaQJbmD30uZGYQNltmcJaHa3AwvuFAnyK88zO3/ZFQ8sek3WmUbTTNQPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xl6Gy1sZP6WITFuw1lylVY/qGiEL4U21EOf9JQzzjX0=;
 b=LoR0NhPeJ9/njmxiMQlYfliZvIiIMe1JXRWQeowbQxzZ7Ieplg1hD+/kig9CsTLb+gAuM/tVfR7hJrIAgYxWGKItyXvd8ORQdKnQPz/Vdp6YCywxy/l6rbMFcb6yzNi4Bzy5SiNB7xZ15yHp77yT0T7oW6Kpz23OPIbZE03MkNU3RT8Xf9U6+FD1mC+cHBBlM9lOmmFiK54/NdW7iE2rRYs78p2hXtJSZzQ74eW2zbeoZd5ToFTBlkKE/JJ8taZ87REMZAWKA7F0E7lx0QoX4ZNtTIcEqRiCGe62z2B43L7qCEfzIRY+jDMDokS8s34WlnWrQIJNiuaGT4YI/+6aMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xl6Gy1sZP6WITFuw1lylVY/qGiEL4U21EOf9JQzzjX0=;
 b=jLUaibd8fdUX6JN+gy2VneIC+wqx2OeV2sJ/VrosPT0+QSlbo+CSIyY+D2hK/4tnfao1osgrRBTuAabp7WQLTpuDqmMyP0O8xrbEQp4d2614jcMxA6Bx8nWzjqOV9MMNgDipnq95UFgrnTOLOQFu5iT/vJRLR9TuGB3CBFyRCtc=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (20.178.225.224) by
 DM6PR04MB5467.namprd04.prod.outlook.com (20.178.25.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13; Fri, 24 Apr 2020 05:00:17 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.2921.030; Fri, 24 Apr 2020
 05:00:17 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 1/3] RISC-V: Export riscv_cpuid_to_hartid_mask() API
Date: Fri, 24 Apr 2020 10:29:26 +0530
Message-Id: <20200424045928.79324-2-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200424045928.79324-1-anup.patel@wdc.com>
References: <20200424045928.79324-1-anup.patel@wdc.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MA1PR01CA0130.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:35::24) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (49.207.59.136) by
 MA1PR01CA0130.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:35::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13 via Frontend Transport; Fri, 24 Apr 2020 05:00:12 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [49.207.59.136]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: bb9e8edd-9bd5-4f69-5c1e-08d7e80c61d2
X-MS-TrafficTypeDiagnostic: DM6PR04MB5467:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB54675AAED1D26AEE033028B18DD00@DM6PR04MB5467.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-Forefront-PRVS: 03838E948C
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(39860400002)(136003)(346002)(376002)(54906003)(110136005)(55016002)(52116002)(7696005)(16526019)(8936002)(5660300002)(7416002)(4326008)(2906002)(8886007)(6666004)(81156014)(478600001)(1006002)(186003)(316002)(1076003)(55236004)(36756003)(4744005)(44832011)(8676002)(2616005)(26005)(956004)(66556008)(66476007)(86362001)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nxPUh7wZf1+YzdpJpoPs4/9RHtfvzaJkdFx5Sdbn7cggFx9NEImW14JY4rfh5WPSUVy85itGk49NnXALQVNcbWpzCX7KpBMjYnIlVJTK4w5wKl507/gayKmbtnH/dlKytaon1eclWu2iQti1sdQfXAnihdgNndVMtHtraRyeFU8RREgzTcm7V4eV7OnGt4yYZQe+Ob98Ro/exGGAHWjXZ0jHgYEAM/r1iWs+DWOXLuT6igGupxpQEs7kEaTg23oHaF7/73U46iExvglyXpDsQu2Zh1Cvv4LqyE2HVS+b82yDPQj8QFPWP6SvSdsfSmB+Hz/JP4C+z2T6UrYMqYh0VbPitQpdCbUWd0ZDU1f59hsr7S2lQFkljikucN8nnCZZ/kF8X/JOcwHQXx8iWjU6/54jSzzHvfAeMQVOBfMeots5neo56CtNMfKk3o9Dx2o0
X-MS-Exchange-AntiSpam-MessageData: ljx1o1u/BhLMjjjV7/mDOYhRWbxo5QhnkqfkknT2hqOP1uvxc6iBLvog0NN4STqZsns+xt4Nh9TR42nGCyKcOIgfArOav1S1jVCc/953CoJ9dodBhWoHCLc3VCNjlb39e9266EXMIAObyREhdvBZUQ==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb9e8edd-9bd5-4f69-5c1e-08d7e80c61d2
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 05:00:17.8370 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p5xDU0W9arBlfOxdtJlYMl8E4TpLQ4X4LGZ48VA3VkR14udShIsPLqCHakJfDT/4+VNoYuXtU0LfeMdqnMvODA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5467
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_220024_398043_CE0198C4 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kvm@vger.kernel.org, Anup Patel <anup@brainfault.org>,
 Anup Patel <anup.patel@wdc.com>, linux-kernel@vger.kernel.org,
 Atish Patra <atish.patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 kvm-riscv@lists.infradead.org, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The riscv_cpuid_to_hartid_mask() API should be exported to allow
building KVM RISC-V as loadable module.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
---
 arch/riscv/kernel/smp.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/kernel/smp.c b/arch/riscv/kernel/smp.c
index e0a6293093f1..a65a8fa0c22d 100644
--- a/arch/riscv/kernel/smp.c
+++ b/arch/riscv/kernel/smp.c
@@ -10,6 +10,7 @@
 
 #include <linux/cpu.h>
 #include <linux/interrupt.h>
+#include <linux/module.h>
 #include <linux/profile.h>
 #include <linux/smp.h>
 #include <linux/sched.h>
@@ -63,6 +64,7 @@ void riscv_cpuid_to_hartid_mask(const struct cpumask *in, struct cpumask *out)
 	for_each_cpu(cpu, in)
 		cpumask_set_cpu(cpuid_to_hartid_map(cpu), out);
 }
+EXPORT_SYMBOL_GPL(riscv_cpuid_to_hartid_mask);
 
 bool arch_match_cpu_phys_id(int cpu, u64 phys_id)
 {
-- 
2.25.1


