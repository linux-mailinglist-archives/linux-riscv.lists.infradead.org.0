Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A611BB797
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Apr 2020 09:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=a8Y295t8QE72Vm27SCz70BXgyi8pWDpywEL8EkQDnOQ=; b=tKfKHD4N48TryR93BKE1UBMHr
	cLZD0BviolMr/YWKJzHeVv0EVqF2RJA7y8LEjXZxR3zfCymXNRjGC9Ogo7UOMKnYrHmDjncnWj5UC
	PQs1899Jo7nmrUjevXRDNZNe9P80iaGonF3LRu+Cw1uZ1KewKZeoU72OF3AMV+L6ZFbijQXJMHlQK
	M/KlOsW4yP44/FP77u/CAwhI+TLq7OwI+04H0QAZAxRov6u1cAU5Ph+tv8zpLpp4vM3fJuNkLSfKv
	4NDBCbAmkyw2WTz6A0jwNOzOjNCiw2zSj/sPWN9QZsqF+goH4/G/z31i3+AqF0lEzmjoDqcRlHR4a
	9P/coUeaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTKkr-000582-6n; Tue, 28 Apr 2020 07:34:09 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKkl-00056J-2z; Tue, 28 Apr 2020 07:34:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588059242; x=1619595242;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Wr0BDwrzBhpamvlXOcWhkms+VbSa4P8MNVsEiwngsTU=;
 b=T3ctMkRFF6ZM32d8n20Creqf+FvLfz71dDYZRHV3KQywCVpduncNP5c/
 jrkJ40vlkKdMt9WQoHuSGliFlwQ69ppj9jTku1Mj99r1uN0zmTV7HSB3B
 hAOd61C1Xxd6exKwETG6oKBDZoKAjlvVYlAucT94Mf34K646+AQ9Y0mG1
 zINi2JTDBP1+GlIg0hZRXfJFZr5eFwI6fYFw6p4lEwQuSA5j2gqd+91vz
 KO04bbsE4XtYqAGe293QTjm2hk/kgFwsY7Gz2XF8/tv4XRyeyWoHJz0oT
 YeYHJGb+LBWaV+6ZMMSqKH/Jdg+UqBD7CF1fCJaq+j+17yRDCU65SQGu6 g==;
IronPort-SDR: O+7CJIqAhaDfbsdKeIHDfXhJCH1Caip7kEueeUujT2lrcsqRIROyZEL3I9t03Q+TdYwIdzV2ZW
 OMG1V43zcAogwpjQ4viE17PX9qzQR2c8qqb9uufRah2ifZvJSKg45jxZAM/If+DyZ1GqLPHEVa
 3C5ZquHSJJ6KORNydHjjs4naly9QreRbT+OcauuywDdlCECSzrJy7Yh6Jp77Un1H5AU09D7bWM
 rz0v6d09Ar1TMdOa/WM0rcdfHXWWuMNRR0vCSr/DXjY4aJFkwkyg24H8VcUQ70XU4ss9hmEJ4d
 YAg=
X-IronPort-AV: E=Sophos;i="5.73,327,1583164800"; d="scan'208";a="245101272"
Received: from mail-mw2nam10lp2100.outbound.protection.outlook.com (HELO
 NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.100])
 by ob1.hgst.iphmx.com with ESMTP; 28 Apr 2020 15:33:58 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GknpajicwpiINCJmZIGIr1pdIP5icFWf3UUw+/yztBAqSqsU12gferKeuN1VOB1/v4EgLdG82cw9N341m18k8BooYQMV2a7IzuhaOOsBYVRXS9EVM2ZtFHMXHZLSUzcXvUI2UElznAUPIF2EnZe9mnUpBNpeTspXs0j4TeyDSz7wCMFUNP7nQC3O36K/os7GeS/akuaZjLtUm4F0VEUumeD4Hhwudwqkt66w3yGBpMvcT+lnAn5GxNyptt4Wud58QDhkcVXpHkXs+8rTYqF2X9CRepqgGAMFcqchWQzl8qhCuOMWjMZwr+PFaf8U2fwVbdsVIsb0Z4Is4N3punwUJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a8Y295t8QE72Vm27SCz70BXgyi8pWDpywEL8EkQDnOQ=;
 b=IJZOzxRsSSSVsSx7uNoQG4U6AiRIEKHNR8uXGfK8jX3wAhDsLB6oepqwZVtrqUZnVbLFvFVjgAuwSFq3XWxzkdekMN/vYrpDYcvwQBbNYyOf0czYPzP9mlh40epn+O0sm3YzQ7iVzH5UBJ3hpJ/mApAX9VH9HooQfoJN/VYaXvySco+r5JxDY0uUgzdUJnEiMmejCSujud8sYVbiQPVMF5ZIYByGjnDUlu3d9TvF8+DtuXOaawJ5GnTffV4OB3gP1NFiUUoPr1nPuTB8HgqRRcZQPkG8VeSvvzuotpk2L8GKMOfzqxw13APP+WrBYqJIr54S1RKUgw6FAB17KwAWkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a8Y295t8QE72Vm27SCz70BXgyi8pWDpywEL8EkQDnOQ=;
 b=VExNAiGXN6rhH7kWY5pL42/TBwLiNybWDmt2rqOlnWbK0NAPsxTW3Y3w6i33JmeJDtnIaEBhysjnPU6ZtmGAGnPW2Bx26sYT51o3IaEBYE0rPcHiReN36oO4r01A6EgXhTNZvFXvfG4LgWnLluLNpM4zegs6IM0AO0m02FKskk8=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4538.namprd04.prod.outlook.com (2603:10b6:5:21::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Tue, 28 Apr
 2020 07:33:57 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 07:33:57 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v12 02/17] RISC-V: Add initial skeletal KVM support
Date: Tue, 28 Apr 2020 13:02:57 +0530
Message-Id: <20200428073312.324684-3-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200428073312.324684-1-anup.patel@wdc.com>
References: <20200428073312.324684-1-anup.patel@wdc.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MAXPR01CA0073.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:49::15) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (106.51.31.156) by
 MAXPR01CA0073.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:49::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.19 via Frontend Transport; Tue, 28 Apr 2020 07:33:51 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.31.156]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e952694c-ed5a-4438-4281-08d7eb4682e5
X-MS-TrafficTypeDiagnostic: DM6PR04MB4538:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB4538B71B99E7C3102D315FD48DAC0@DM6PR04MB4538.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:214;
X-Forefront-PRVS: 0387D64A71
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(136003)(396003)(346002)(376002)(55016002)(1006002)(8886007)(55236004)(956004)(2906002)(30864003)(1076003)(2616005)(44832011)(86362001)(8676002)(5660300002)(16526019)(7416002)(478600001)(36756003)(66476007)(54906003)(26005)(186003)(4326008)(110136005)(66946007)(66556008)(8936002)(7696005)(316002)(52116002)(81156014);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4o2SY7lF+ki98PJNW451M4jbWYNkC+IXDVjrNYCj2mX0uVI9qXjoPtQyIqwaK6PKnFX3eMumS6+Buqlwq04+SuPXaBpuA0uXeWO6NHgsZkkruzxRq33ImlVf+a2SL7iCVQmAA/gSw2qkvJ/ey+90wRJofAGybDfwMzLfJNu5hwEn+SSEPERENuj20Hu/5+kgAraywd4qJDqiZguzoZQMbDvLtZkdpyvhzOYG2BsR+7ZEv4DqtH+U6T/hplI9Pj3RGDc7f7jSDZoty3zYBFuPXdE28z7LKKaUH5NsQri4hf0ZnFhAoKdP6R9zvbwApM0LLepRRzOysJWFvtN5Ix/rTRTn+aZWnIqGeYSgEzsA4U/fRBatpbjpmWHHCMU9CWQWBFKgGTRzwz8a+CO3+PhxlVBulYni8+sy7AiR96hs+bAVHFRYrGRu9QTCI9sflN9N
X-MS-Exchange-AntiSpam-MessageData: E2RL2p1MlcAxAQkRLtxVARCXpdpG6VHqfk90KA4rBTc/MuPp2Cr836PUGvQ2/29WOq5fXSX1YiksyNPRmIx3IcRdIlEEexLQgI5NEQ/FJ1BRY8aWFWFJFGi//nCk2Kr++Moq07ZFpDfdIITHAIP1JPpiguMECJz6Az1d0xHiYAydvt1IyNJvhGnAUk8gW8biRSgfIV8QoZBlXTbwnsnsCQF7QhHEWcyr/WhCM9zJtCZUUWb6cY44nuo6ptKQPLxssbskXJ6Co73p8XABNIPcGMN6JFi7CpUR6QPgrJl5rpU55ofXLBFF4WdRV/GvyZZL8N8tjS+zyOTfjc13/OYmNnkDukn/ASDs97XE2tZVdMebg56Auc++qrR17ZE141ua3dwig1LxZ4EMgg7x/PWweG/SzUkHHIxX9RAb9WOkcEKSRn3lF+BrFdoU+AHCtLD6BisEWayAWJOH2Bztn//9MYRASCDiaQlJjF8Dl8OdqgYW4j3L0/7UZx7N2MmK5PUv5db6UrXzjDpQzQ5P9Toird7I1f4NgXdxCG6Tp5CacreJwu/jG/fzyYCxVgWLydN5UmMdcRS6ndpUvic1ixWEeT0Uvle8MYI0sfxKs5rzb3hkYDuzn6V8ZfcfyH6cJ33h9Cra4d6kcffibknmgUKHCuKPj7gAdru6VDwFWvsqCa/nvB8yWwHBJJg6zFwFZULurxoCfdR61JATr1opOORlSF3mIvCaN81YBzuOFnWmvAQ/T+r2BxWA2fEd5csKppu5QAD2ByGMZpB2UKvED2Bd7krsWcQ6P6uG7CzcLM/0Ta8=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e952694c-ed5a-4438-4281-08d7eb4682e5
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2020 07:33:57.6522 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ByqIDrYTDXwHhmx9/2UcuPg6ziwqXA8G58jUd0qx3B8jpxAfboIIOPBmdGAzjbg26PqFsbQH/Zf8CsTYGPk1qQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4538
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_003403_143963_0D37E30E 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, kvm@vger.kernel.org,
 Anup Patel <anup@brainfault.org>, Anup Patel <anup.patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, kvm-riscv@lists.infradead.org,
 Alexander Graf <graf@amazon.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch adds initial skeletal KVM RISC-V support which has:
1. A simple implementation of arch specific VM functions
   except kvm_vm_ioctl_get_dirty_log() which will implemeted
   in-future as part of stage2 page loging.
2. Stubs of required arch specific VCPU functions except
   kvm_arch_vcpu_ioctl_run() which is semi-complete and
   extended by subsequent patches.
3. Stubs for required arch specific stage2 MMU functions.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
---
 arch/riscv/Kconfig                |   2 +
 arch/riscv/Makefile               |   2 +
 arch/riscv/include/asm/kvm_host.h |  89 +++++++++
 arch/riscv/include/uapi/asm/kvm.h |  47 +++++
 arch/riscv/kvm/Kconfig            |  33 +++
 arch/riscv/kvm/Makefile           |  13 ++
 arch/riscv/kvm/main.c             |  93 +++++++++
 arch/riscv/kvm/mmu.c              |  86 ++++++++
 arch/riscv/kvm/vcpu.c             | 321 ++++++++++++++++++++++++++++++
 arch/riscv/kvm/vcpu_exit.c        |  35 ++++
 arch/riscv/kvm/vm.c               |  79 ++++++++
 11 files changed, 800 insertions(+)
 create mode 100644 arch/riscv/include/asm/kvm_host.h
 create mode 100644 arch/riscv/include/uapi/asm/kvm.h
 create mode 100644 arch/riscv/kvm/Kconfig
 create mode 100644 arch/riscv/kvm/Makefile
 create mode 100644 arch/riscv/kvm/main.c
 create mode 100644 arch/riscv/kvm/mmu.c
 create mode 100644 arch/riscv/kvm/vcpu.c
 create mode 100644 arch/riscv/kvm/vcpu_exit.c
 create mode 100644 arch/riscv/kvm/vm.c

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index e9dbfd7d7738..e4b33939d1c7 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -386,3 +386,5 @@ menu "Power management options"
 source "kernel/power/Kconfig"
 
 endmenu
+
+source "arch/riscv/kvm/Kconfig"
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index fb6e37db836d..fc189284b245 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -79,6 +79,8 @@ head-y := arch/riscv/kernel/head.o
 
 core-y += arch/riscv/
 
+core-$(CONFIG_KVM) += arch/riscv/kvm/
+
 libs-y += arch/riscv/lib/
 
 PHONY += vdso_install
diff --git a/arch/riscv/include/asm/kvm_host.h b/arch/riscv/include/asm/kvm_host.h
new file mode 100644
index 000000000000..ad4a5e1a6cd3
--- /dev/null
+++ b/arch/riscv/include/asm/kvm_host.h
@@ -0,0 +1,89 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2019 Western Digital Corporation or its affiliates.
+ *
+ * Authors:
+ *     Anup Patel <anup.patel@wdc.com>
+ */
+
+#ifndef __RISCV_KVM_HOST_H__
+#define __RISCV_KVM_HOST_H__
+
+#include <linux/types.h>
+#include <linux/kvm.h>
+#include <linux/kvm_types.h>
+
+#ifdef CONFIG_64BIT
+#define KVM_MAX_VCPUS			(1U << 16)
+#else
+#define KVM_MAX_VCPUS			(1U << 9)
+#endif
+
+#define KVM_USER_MEM_SLOTS		512
+#define KVM_HALT_POLL_NS_DEFAULT	500000
+
+#define KVM_VCPU_MAX_FEATURES		0
+
+#define KVM_REQ_SLEEP \
+	KVM_ARCH_REQ_FLAGS(0, KVM_REQUEST_WAIT | KVM_REQUEST_NO_WAKEUP)
+#define KVM_REQ_VCPU_RESET		KVM_ARCH_REQ(1)
+
+struct kvm_vm_stat {
+	ulong remote_tlb_flush;
+};
+
+struct kvm_vcpu_stat {
+	u64 halt_successful_poll;
+	u64 halt_attempted_poll;
+	u64 halt_poll_invalid;
+	u64 halt_wakeup;
+	u64 ecall_exit_stat;
+	u64 wfi_exit_stat;
+	u64 mmio_exit_user;
+	u64 mmio_exit_kernel;
+	u64 exits;
+};
+
+struct kvm_arch_memory_slot {
+};
+
+struct kvm_arch {
+	/* stage2 page table */
+	pgd_t *pgd;
+	phys_addr_t pgd_phys;
+};
+
+struct kvm_cpu_trap {
+	unsigned long sepc;
+	unsigned long scause;
+	unsigned long stval;
+	unsigned long htval;
+	unsigned long htinst;
+};
+
+struct kvm_vcpu_arch {
+	/* Don't run the VCPU (blocked) */
+	bool pause;
+
+	/* SRCU lock index for in-kernel run loop */
+	int srcu_idx;
+};
+
+static inline void kvm_arch_hardware_unsetup(void) {}
+static inline void kvm_arch_sync_events(struct kvm *kvm) {}
+static inline void kvm_arch_vcpu_uninit(struct kvm_vcpu *vcpu) {}
+static inline void kvm_arch_sched_in(struct kvm_vcpu *vcpu, int cpu) {}
+static inline void kvm_arch_vcpu_block_finish(struct kvm_vcpu *vcpu) {}
+
+void kvm_riscv_stage2_flush_cache(struct kvm_vcpu *vcpu);
+int kvm_riscv_stage2_alloc_pgd(struct kvm *kvm);
+void kvm_riscv_stage2_free_pgd(struct kvm *kvm);
+void kvm_riscv_stage2_update_hgatp(struct kvm_vcpu *vcpu);
+
+int kvm_riscv_vcpu_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run);
+int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
+			struct kvm_cpu_trap *trap);
+
+static inline void __kvm_riscv_switch_to(struct kvm_vcpu_arch *vcpu_arch) {}
+
+#endif /* __RISCV_KVM_HOST_H__ */
diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
new file mode 100644
index 000000000000..d15875818b6e
--- /dev/null
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -0,0 +1,47 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 Western Digital Corporation or its affiliates.
+ *
+ * Authors:
+ *     Anup Patel <anup.patel@wdc.com>
+ */
+
+#ifndef __LINUX_KVM_RISCV_H
+#define __LINUX_KVM_RISCV_H
+
+#ifndef __ASSEMBLY__
+
+#include <linux/types.h>
+#include <asm/ptrace.h>
+
+#define __KVM_HAVE_READONLY_MEM
+
+#define KVM_COALESCED_MMIO_PAGE_OFFSET 1
+
+/* for KVM_GET_REGS and KVM_SET_REGS */
+struct kvm_regs {
+};
+
+/* for KVM_GET_FPU and KVM_SET_FPU */
+struct kvm_fpu {
+};
+
+/* KVM Debug exit structure */
+struct kvm_debug_exit_arch {
+};
+
+/* for KVM_SET_GUEST_DEBUG */
+struct kvm_guest_debug_arch {
+};
+
+/* definition of registers in kvm_run */
+struct kvm_sync_regs {
+};
+
+/* dummy definition */
+struct kvm_sregs {
+};
+
+#endif
+
+#endif /* __LINUX_KVM_RISCV_H */
diff --git a/arch/riscv/kvm/Kconfig b/arch/riscv/kvm/Kconfig
new file mode 100644
index 000000000000..88edd477b3a8
--- /dev/null
+++ b/arch/riscv/kvm/Kconfig
@@ -0,0 +1,33 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# KVM configuration
+#
+
+source "virt/kvm/Kconfig"
+
+menuconfig VIRTUALIZATION
+	bool "Virtualization"
+	help
+	  Say Y here to get to see options for using your Linux host to run
+	  other operating systems inside virtual machines (guests).
+	  This option alone does not add any kernel code.
+
+	  If you say N, all options in this submenu will be skipped and
+	  disabled.
+
+if VIRTUALIZATION
+
+config KVM
+	tristate "Kernel-based Virtual Machine (KVM) support (EXPERIMENTAL)"
+	depends on RISCV_SBI && MMU
+	select PREEMPT_NOTIFIERS
+	select ANON_INODES
+	select KVM_MMIO
+	select HAVE_KVM_VCPU_ASYNC_IOCTL
+	select SRCU
+	help
+	  Support hosting virtualized guest machines.
+
+	  If unsure, say N.
+
+endif # VIRTUALIZATION
diff --git a/arch/riscv/kvm/Makefile b/arch/riscv/kvm/Makefile
new file mode 100644
index 000000000000..37b5a59d4f4f
--- /dev/null
+++ b/arch/riscv/kvm/Makefile
@@ -0,0 +1,13 @@
+# SPDX-License-Identifier: GPL-2.0
+# Makefile for RISC-V KVM support
+#
+
+common-objs-y = $(addprefix ../../../virt/kvm/, kvm_main.o coalesced_mmio.o)
+
+ccflags-y := -Ivirt/kvm -Iarch/riscv/kvm
+
+kvm-objs := $(common-objs-y)
+
+kvm-objs += main.o vm.o mmu.o vcpu.o vcpu_exit.o
+
+obj-$(CONFIG_KVM)	+= kvm.o
diff --git a/arch/riscv/kvm/main.c b/arch/riscv/kvm/main.c
new file mode 100644
index 000000000000..4dee84f5c440
--- /dev/null
+++ b/arch/riscv/kvm/main.c
@@ -0,0 +1,93 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Western Digital Corporation or its affiliates.
+ *
+ * Authors:
+ *     Anup Patel <anup.patel@wdc.com>
+ */
+
+#include <linux/errno.h>
+#include <linux/err.h>
+#include <linux/module.h>
+#include <linux/kvm_host.h>
+#include <asm/csr.h>
+#include <asm/hwcap.h>
+#include <asm/sbi.h>
+
+long kvm_arch_dev_ioctl(struct file *filp,
+			unsigned int ioctl, unsigned long arg)
+{
+	return -EINVAL;
+}
+
+int kvm_arch_check_processor_compat(void *opaque)
+{
+	return 0;
+}
+
+int kvm_arch_hardware_setup(void *opaque)
+{
+	return 0;
+}
+
+int kvm_arch_hardware_enable(void)
+{
+	unsigned long hideleg, hedeleg;
+
+	hedeleg = 0;
+	hedeleg |= (1UL << EXC_INST_MISALIGNED);
+	hedeleg |= (1UL << EXC_BREAKPOINT);
+	hedeleg |= (1UL << EXC_SYSCALL);
+	hedeleg |= (1UL << EXC_INST_PAGE_FAULT);
+	hedeleg |= (1UL << EXC_LOAD_PAGE_FAULT);
+	hedeleg |= (1UL << EXC_STORE_PAGE_FAULT);
+	csr_write(CSR_HEDELEG, hedeleg);
+
+	hideleg = 0;
+	hideleg |= (1UL << IRQ_VS_SOFT);
+	hideleg |= (1UL << IRQ_VS_TIMER);
+	hideleg |= (1UL << IRQ_VS_EXT);
+	csr_write(CSR_HIDELEG, hideleg);
+
+	csr_write(CSR_HVIP, 0);
+
+	return 0;
+}
+
+void kvm_arch_hardware_disable(void)
+{
+	csr_write(CSR_HEDELEG, 0);
+	csr_write(CSR_HIDELEG, 0);
+}
+
+int kvm_arch_init(void *opaque)
+{
+	if (!riscv_isa_extension_available(NULL, h)) {
+		kvm_info("hypervisor extension not available\n");
+		return -ENODEV;
+	}
+
+	if (sbi_spec_is_0_1()) {
+		kvm_info("require SBI v0.2 or higher\n");
+		return -ENODEV;
+	}
+
+	if (sbi_probe_extension(SBI_EXT_RFENCE) <= 0) {
+		kvm_info("require SBI RFENCE extension\n");
+		return -ENODEV;
+	}
+
+	kvm_info("hypervisor extension available\n");
+
+	return 0;
+}
+
+void kvm_arch_exit(void)
+{
+}
+
+static int riscv_kvm_init(void)
+{
+	return kvm_init(NULL, sizeof(struct kvm_vcpu), 0, THIS_MODULE);
+}
+module_init(riscv_kvm_init);
diff --git a/arch/riscv/kvm/mmu.c b/arch/riscv/kvm/mmu.c
new file mode 100644
index 000000000000..ec13507e8a18
--- /dev/null
+++ b/arch/riscv/kvm/mmu.c
@@ -0,0 +1,86 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Western Digital Corporation or its affiliates.
+ *
+ * Authors:
+ *     Anup Patel <anup.patel@wdc.com>
+ */
+
+#include <linux/bitops.h>
+#include <linux/errno.h>
+#include <linux/err.h>
+#include <linux/hugetlb.h>
+#include <linux/module.h>
+#include <linux/uaccess.h>
+#include <linux/vmalloc.h>
+#include <linux/kvm_host.h>
+#include <linux/sched/signal.h>
+#include <asm/page.h>
+#include <asm/pgtable.h>
+
+void kvm_arch_sync_dirty_log(struct kvm *kvm, struct kvm_memory_slot *memslot)
+{
+}
+
+void kvm_arch_free_memslot(struct kvm *kvm, struct kvm_memory_slot *free)
+{
+}
+
+int kvm_arch_create_memslot(struct kvm *kvm, struct kvm_memory_slot *slot,
+			    unsigned long npages)
+{
+	return 0;
+}
+
+void kvm_arch_memslots_updated(struct kvm *kvm, u64 gen)
+{
+}
+
+void kvm_arch_flush_shadow_all(struct kvm *kvm)
+{
+	/* TODO: */
+}
+
+void kvm_arch_flush_shadow_memslot(struct kvm *kvm,
+				   struct kvm_memory_slot *slot)
+{
+}
+
+void kvm_arch_commit_memory_region(struct kvm *kvm,
+				const struct kvm_userspace_memory_region *mem,
+				struct kvm_memory_slot *old,
+				const struct kvm_memory_slot *new,
+				enum kvm_mr_change change)
+{
+	/* TODO: */
+}
+
+int kvm_arch_prepare_memory_region(struct kvm *kvm,
+				struct kvm_memory_slot *memslot,
+				const struct kvm_userspace_memory_region *mem,
+				enum kvm_mr_change change)
+{
+	/* TODO: */
+	return 0;
+}
+
+void kvm_riscv_stage2_flush_cache(struct kvm_vcpu *vcpu)
+{
+	/* TODO: */
+}
+
+int kvm_riscv_stage2_alloc_pgd(struct kvm *kvm)
+{
+	/* TODO: */
+	return 0;
+}
+
+void kvm_riscv_stage2_free_pgd(struct kvm *kvm)
+{
+	/* TODO: */
+}
+
+void kvm_riscv_stage2_update_hgatp(struct kvm_vcpu *vcpu)
+{
+	/* TODO: */
+}
diff --git a/arch/riscv/kvm/vcpu.c b/arch/riscv/kvm/vcpu.c
new file mode 100644
index 000000000000..b238592db2ba
--- /dev/null
+++ b/arch/riscv/kvm/vcpu.c
@@ -0,0 +1,321 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Western Digital Corporation or its affiliates.
+ *
+ * Authors:
+ *     Anup Patel <anup.patel@wdc.com>
+ */
+
+#include <linux/bitops.h>
+#include <linux/errno.h>
+#include <linux/err.h>
+#include <linux/kdebug.h>
+#include <linux/module.h>
+#include <linux/uaccess.h>
+#include <linux/vmalloc.h>
+#include <linux/sched/signal.h>
+#include <linux/fs.h>
+#include <linux/kvm_host.h>
+#include <asm/csr.h>
+#include <asm/delay.h>
+#include <asm/hwcap.h>
+
+#define VCPU_STAT(x) { #x, offsetof(struct kvm_vcpu, stat.x), KVM_STAT_VCPU }
+
+struct kvm_stats_debugfs_item debugfs_entries[] = {
+	VCPU_STAT(ecall_exit_stat),
+	VCPU_STAT(wfi_exit_stat),
+	VCPU_STAT(mmio_exit_user),
+	VCPU_STAT(mmio_exit_kernel),
+	VCPU_STAT(exits),
+	{ NULL }
+};
+
+int kvm_arch_vcpu_precreate(struct kvm *kvm, unsigned int id)
+{
+	return 0;
+}
+
+int kvm_arch_vcpu_create(struct kvm_vcpu *vcpu)
+{
+	/* TODO: */
+	return 0;
+}
+
+int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
+{
+	return 0;
+}
+
+void kvm_arch_vcpu_postcreate(struct kvm_vcpu *vcpu)
+{
+}
+
+int kvm_arch_vcpu_init(struct kvm_vcpu *vcpu)
+{
+	/* TODO: */
+	return 0;
+}
+
+void kvm_arch_vcpu_destroy(struct kvm_vcpu *vcpu)
+{
+	/* TODO: */
+}
+
+int kvm_cpu_has_pending_timer(struct kvm_vcpu *vcpu)
+{
+	/* TODO: */
+	return 0;
+}
+
+void kvm_arch_vcpu_blocking(struct kvm_vcpu *vcpu)
+{
+}
+
+void kvm_arch_vcpu_unblocking(struct kvm_vcpu *vcpu)
+{
+}
+
+int kvm_arch_vcpu_runnable(struct kvm_vcpu *vcpu)
+{
+	/* TODO: */
+	return 0;
+}
+
+int kvm_arch_vcpu_should_kick(struct kvm_vcpu *vcpu)
+{
+	/* TODO: */
+	return 0;
+}
+
+bool kvm_arch_vcpu_in_kernel(struct kvm_vcpu *vcpu)
+{
+	/* TODO: */
+	return false;
+}
+
+bool kvm_arch_has_vcpu_debugfs(void)
+{
+	return false;
+}
+
+int kvm_arch_create_vcpu_debugfs(struct kvm_vcpu *vcpu)
+{
+	return 0;
+}
+
+vm_fault_t kvm_arch_vcpu_fault(struct kvm_vcpu *vcpu, struct vm_fault *vmf)
+{
+	return VM_FAULT_SIGBUS;
+}
+
+long kvm_arch_vcpu_async_ioctl(struct file *filp,
+			       unsigned int ioctl, unsigned long arg)
+{
+	/* TODO; */
+	return -ENOIOCTLCMD;
+}
+
+long kvm_arch_vcpu_ioctl(struct file *filp,
+			 unsigned int ioctl, unsigned long arg)
+{
+	/* TODO: */
+	return -EINVAL;
+}
+
+int kvm_arch_vcpu_ioctl_get_sregs(struct kvm_vcpu *vcpu,
+				  struct kvm_sregs *sregs)
+{
+	return -EINVAL;
+}
+
+int kvm_arch_vcpu_ioctl_set_sregs(struct kvm_vcpu *vcpu,
+				  struct kvm_sregs *sregs)
+{
+	return -EINVAL;
+}
+
+int kvm_arch_vcpu_ioctl_get_fpu(struct kvm_vcpu *vcpu, struct kvm_fpu *fpu)
+{
+	return -EINVAL;
+}
+
+int kvm_arch_vcpu_ioctl_set_fpu(struct kvm_vcpu *vcpu, struct kvm_fpu *fpu)
+{
+	return -EINVAL;
+}
+
+int kvm_arch_vcpu_ioctl_translate(struct kvm_vcpu *vcpu,
+				  struct kvm_translation *tr)
+{
+	return -EINVAL;
+}
+
+int kvm_arch_vcpu_ioctl_get_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
+{
+	return -EINVAL;
+}
+
+int kvm_arch_vcpu_ioctl_set_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
+{
+	return -EINVAL;
+}
+
+int kvm_arch_vcpu_ioctl_get_mpstate(struct kvm_vcpu *vcpu,
+				    struct kvm_mp_state *mp_state)
+{
+	/* TODO: */
+	return 0;
+}
+
+int kvm_arch_vcpu_ioctl_set_mpstate(struct kvm_vcpu *vcpu,
+				    struct kvm_mp_state *mp_state)
+{
+	/* TODO: */
+	return 0;
+}
+
+int kvm_arch_vcpu_ioctl_set_guest_debug(struct kvm_vcpu *vcpu,
+					struct kvm_guest_debug *dbg)
+{
+	/* TODO; To be implemented later. */
+	return -EINVAL;
+}
+
+void kvm_arch_vcpu_load(struct kvm_vcpu *vcpu, int cpu)
+{
+	/* TODO: */
+
+	kvm_riscv_stage2_update_hgatp(vcpu);
+}
+
+void kvm_arch_vcpu_put(struct kvm_vcpu *vcpu)
+{
+	/* TODO: */
+}
+
+static void kvm_riscv_check_vcpu_requests(struct kvm_vcpu *vcpu)
+{
+	/* TODO: */
+}
+
+int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
+{
+	int ret;
+	struct kvm_cpu_trap trap;
+
+	vcpu->arch.srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
+
+	/* Process MMIO value returned from user-space */
+	if (run->exit_reason == KVM_EXIT_MMIO) {
+		ret = kvm_riscv_vcpu_mmio_return(vcpu, vcpu->run);
+		if (ret) {
+			srcu_read_unlock(&vcpu->kvm->srcu, vcpu->arch.srcu_idx);
+			return ret;
+		}
+	}
+
+	if (run->immediate_exit) {
+		srcu_read_unlock(&vcpu->kvm->srcu, vcpu->arch.srcu_idx);
+		return -EINTR;
+	}
+
+	vcpu_load(vcpu);
+
+	kvm_sigset_activate(vcpu);
+
+	ret = 1;
+	run->exit_reason = KVM_EXIT_UNKNOWN;
+	while (ret > 0) {
+		/* Check conditions before entering the guest */
+		cond_resched();
+
+		kvm_riscv_check_vcpu_requests(vcpu);
+
+		preempt_disable();
+
+		local_irq_disable();
+
+		/*
+		 * Exit if we have a signal pending so that we can deliver
+		 * the signal to user space.
+		 */
+		if (signal_pending(current)) {
+			ret = -EINTR;
+			run->exit_reason = KVM_EXIT_INTR;
+		}
+
+		/*
+		 * Ensure we set mode to IN_GUEST_MODE after we disable
+		 * interrupts and before the final VCPU requests check.
+		 * See the comment in kvm_vcpu_exiting_guest_mode() and
+		 * Documentation/virtual/kvm/vcpu-requests.rst
+		 */
+		vcpu->mode = IN_GUEST_MODE;
+
+		srcu_read_unlock(&vcpu->kvm->srcu, vcpu->arch.srcu_idx);
+		smp_mb__after_srcu_read_unlock();
+
+		if (ret <= 0 ||
+		    kvm_request_pending(vcpu)) {
+			vcpu->mode = OUTSIDE_GUEST_MODE;
+			local_irq_enable();
+			preempt_enable();
+			vcpu->arch.srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
+			continue;
+		}
+
+		guest_enter_irqoff();
+
+		__kvm_riscv_switch_to(&vcpu->arch);
+
+		vcpu->mode = OUTSIDE_GUEST_MODE;
+		vcpu->stat.exits++;
+
+		/*
+		 * Save SCAUSE, STVAL, HTVAL, and HTINST because we might
+		 * get an interrupt between __kvm_riscv_switch_to() and
+		 * local_irq_enable() which can potentially change CSRs.
+		 */
+		trap.sepc = 0;
+		trap.scause = csr_read(CSR_SCAUSE);
+		trap.stval = csr_read(CSR_STVAL);
+		trap.htval = csr_read(CSR_HTVAL);
+		trap.htinst = csr_read(CSR_HTINST);
+
+		/*
+		 * We may have taken a host interrupt in VS/VU-mode (i.e.
+		 * while executing the guest). This interrupt is still
+		 * pending, as we haven't serviced it yet!
+		 *
+		 * We're now back in HS-mode with interrupts disabled
+		 * so enabling the interrupts now will have the effect
+		 * of taking the interrupt again, in HS-mode this time.
+		 */
+		local_irq_enable();
+
+		/*
+		 * We do local_irq_enable() before calling guest_exit() so
+		 * that if a timer interrupt hits while running the guest
+		 * we account that tick as being spent in the guest. We
+		 * enable preemption after calling guest_exit() so that if
+		 * we get preempted we make sure ticks after that is not
+		 * counted as guest time.
+		 */
+		guest_exit();
+
+		preempt_enable();
+
+		vcpu->arch.srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
+
+		ret = kvm_riscv_vcpu_exit(vcpu, run, &trap);
+	}
+
+	kvm_sigset_deactivate(vcpu);
+
+	vcpu_put(vcpu);
+
+	srcu_read_unlock(&vcpu->kvm->srcu, vcpu->arch.srcu_idx);
+
+	return ret;
+}
diff --git a/arch/riscv/kvm/vcpu_exit.c b/arch/riscv/kvm/vcpu_exit.c
new file mode 100644
index 000000000000..4484e9200fe4
--- /dev/null
+++ b/arch/riscv/kvm/vcpu_exit.c
@@ -0,0 +1,35 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Western Digital Corporation or its affiliates.
+ *
+ * Authors:
+ *     Anup Patel <anup.patel@wdc.com>
+ */
+
+#include <linux/errno.h>
+#include <linux/err.h>
+#include <linux/kvm_host.h>
+
+/**
+ * kvm_riscv_vcpu_mmio_return -- Handle MMIO loads after user space emulation
+ *			     or in-kernel IO emulation
+ *
+ * @vcpu: The VCPU pointer
+ * @run:  The VCPU run struct containing the mmio data
+ */
+int kvm_riscv_vcpu_mmio_return(struct kvm_vcpu *vcpu, struct kvm_run *run)
+{
+	/* TODO: */
+	return 0;
+}
+
+/*
+ * Return > 0 to return to guest, < 0 on error, 0 (and set exit_reason) on
+ * proper exit to userspace.
+ */
+int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
+			struct kvm_cpu_trap *trap)
+{
+	/* TODO: */
+	return 0;
+}
diff --git a/arch/riscv/kvm/vm.c b/arch/riscv/kvm/vm.c
new file mode 100644
index 000000000000..ac0211820521
--- /dev/null
+++ b/arch/riscv/kvm/vm.c
@@ -0,0 +1,79 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2019 Western Digital Corporation or its affiliates.
+ *
+ * Authors:
+ *     Anup Patel <anup.patel@wdc.com>
+ */
+
+#include <linux/errno.h>
+#include <linux/err.h>
+#include <linux/module.h>
+#include <linux/uaccess.h>
+#include <linux/kvm_host.h>
+
+int kvm_vm_ioctl_get_dirty_log(struct kvm *kvm, struct kvm_dirty_log *log)
+{
+	/* TODO: To be added later. */
+	return -ENOTSUPP;
+}
+
+int kvm_arch_init_vm(struct kvm *kvm, unsigned long type)
+{
+	int r;
+
+	r = kvm_riscv_stage2_alloc_pgd(kvm);
+	if (r)
+		return r;
+
+	return 0;
+}
+
+void kvm_arch_destroy_vm(struct kvm *kvm)
+{
+	int i;
+
+	for (i = 0; i < KVM_MAX_VCPUS; ++i) {
+		if (kvm->vcpus[i]) {
+			kvm_arch_vcpu_destroy(kvm->vcpus[i]);
+			kvm->vcpus[i] = NULL;
+		}
+	}
+}
+
+int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
+{
+	int r;
+
+	switch (ext) {
+	case KVM_CAP_DEVICE_CTRL:
+	case KVM_CAP_USER_MEMORY:
+	case KVM_CAP_DESTROY_MEMORY_REGION_WORKS:
+	case KVM_CAP_ONE_REG:
+	case KVM_CAP_READONLY_MEM:
+	case KVM_CAP_MP_STATE:
+	case KVM_CAP_IMMEDIATE_EXIT:
+		r = 1;
+		break;
+	case KVM_CAP_NR_VCPUS:
+		r = num_online_cpus();
+		break;
+	case KVM_CAP_MAX_VCPUS:
+		r = KVM_MAX_VCPUS;
+		break;
+	case KVM_CAP_NR_MEMSLOTS:
+		r = KVM_USER_MEM_SLOTS;
+		break;
+	default:
+		r = 0;
+		break;
+	}
+
+	return r;
+}
+
+long kvm_arch_vm_ioctl(struct file *filp,
+		       unsigned int ioctl, unsigned long arg)
+{
+	return -EINVAL;
+}
-- 
2.25.1


