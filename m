Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9B71BB792
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Apr 2020 09:34:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=piwHsz7eOuE/EHPtZVN3i3H74CFot424Bo5imRr8R34=; b=huIKI+z51reSBjtj5ZM6cXB7Yp
	PgQqpLb3QhyvzMU0ZMC7itDBDNWGZfwU7OcZMzAEFn39dvycyCU6+56K7NatJ+g81/2icvUReZziY
	0a0bwoD1JxlDohwLGYLkOy60JxcqdFyIxAYISUqdzyXeOBW7CQWfbPYG1yfJoXyseLaPYMWZu2syo
	qmX755cBIwzQq6gob6l/ViuVT5VcX07usLdtyaXiEkeXoDTB9OjT7Jeg57Z63TzvW6dx99LAAHdNn
	eWwGbe1A6d3pMmAwxtGiiRHq9EZkheTvl3kNjEEwFC5TjY3H1wcniFMO5iB/IAVVBh4e/8SGqO7ZI
	cY4uhXEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTKkZ-0004vv-TO; Tue, 28 Apr 2020 07:33:51 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTKkV-0004v2-IL; Tue, 28 Apr 2020 07:33:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1588059267; x=1619595267;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=K2ObMqTtR+ub5JWRiFnyxSpi8EEPvM1ecrOMfRGOYT4=;
 b=kD7l7+2Ge3+I/yPTS1aaFSUXCANVJaXTp4tG2k/gOWW4wuDzX7QeqXZQ
 vXq+VUY6AF9ml2wCkuvLLC3JeWdgGjRrgwSqNldAprSBVO/XZp0pLXass
 Pi97Yh59gtOAG4dBRQ+NfhmB752jeUBmg8wM77nIte/sj+SSXYKVV9ngj
 eXDLHkvZoIs1XpEPklG2NSddQdFIYSqjuSZMvcFBl4zCOX/3NLxY13eVr
 BBfTRLcO/LzJ581pFPXNIhMgcS/CKZyjV2qiOnF4MT8Ri0VEgLR8t0omo
 vPbVIhp+4ByZ2TUc+FXpg9nJVgsn775E1wDjdr5dnrtMHzQEEet1r0IiW g==;
IronPort-SDR: 6UOk4dP4EPmb/mS4lgz3/GEtQlRG4uo6dAv7Ev2F9EthIgu3bfzGOEcJ1WOHMcPLr1YjIy9wMr
 hVWbgEfH4YQOmnQeoC+zhNSmjlxYpFTmiNHxklZr7/ZUOEWbiEkIMRlCfTTEguy7IrETIbOaW6
 eH76IPBub5DKTRi5s47LjJWu1uOfDX9XlEvAAQBvGpLmiJXxDlZdhDoPgkGnzciP+YuineivMB
 +JSXwV8SlUphzbiCEwEPvmpFpKX7jDptZQfhlWiy+zgRn3Z3XHgMjK8ZIR9kut+WrLV+VJdDZk
 AKM=
X-IronPort-AV: E=Sophos;i="5.73,327,1583164800"; d="scan'208";a="238865785"
Received: from mail-co1nam04lp2052.outbound.protection.outlook.com (HELO
 NAM04-CO1-obe.outbound.protection.outlook.com) ([104.47.45.52])
 by ob1.hgst.iphmx.com with ESMTP; 28 Apr 2020 15:34:22 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jzQGpuTYgtoXhT+sEz1q9o+dJd28lSU/s8nbddhTyItKcCoosjvVmXPaDXlOKGn3C91MFROPWvvXo2IzSw4LUVfIaTMYJvSWxQomM1m3hZA5c88J96/Hmq56DT4ebO+FzSFJxhPQehz/nxHVvKw04hVN0Vsc8H3oqXaElvuKtvHrc+7sqA0qHB51dPRO3hFMnCtCIQSHZcZYysStYd2mvGYtvpY1XQKaBqWXWDNrSYLZzysvxq5xBlG7eCmRqWNd9yvziMIz5/2m4dfwRSSaCk/wAfY7JI06xTuvFuQzbPbuaKfeNHvo2UUve6hbri1zI7ktsPZJEX3tB6fqTT/92Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=piwHsz7eOuE/EHPtZVN3i3H74CFot424Bo5imRr8R34=;
 b=dfHqWji5vZXEwUvkLmPs3O+qvAehfEEeJqPTvwm7j12l9+24CvAlE3gW/A8lzvn/HT7VbeLE/Dm56Fw0BUvtn3X1UyORK9+ISqGG78j1C3vcmnHBPbkfrajcDA6QwkzTqQzD9dGYInB4CQhngUn/YcEKZJ289VSykUvGlwpGrGbaWgArXrmf/5FNYi16K6psu7aXCD4/+9sPevfcKQXSkGPOKCvNIoW5YedppVU19HpPkTDz+fpKuwJCoL3SpQNyFJrsWnNKUQzVATb0iZNFmMzXZfwZcOPBs2x2A1oOGczxQSiIJt5ReJKfj/TlvTx5W/KaQwvhkXezZB+aukI23A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=piwHsz7eOuE/EHPtZVN3i3H74CFot424Bo5imRr8R34=;
 b=aUAy1nUQteb95ksZNPVjCskhd9Xo7fn5LgiQS8GPMzwbkQaPKzPnxIDWXdI0R4nqdgmBKviTuNpaLUsKFdbqFw5ruWENbYYkbmWigojf5TxFbrj8jyFsESy7C6LGJw3E/lrOzBnIJ3SGO71SrY6p51CVI/a6dYjgCia+9BldNuk=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4538.namprd04.prod.outlook.com (2603:10b6:5:21::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Tue, 28 Apr
 2020 07:33:43 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 07:33:43 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v12 00/17] KVM RISC-V Support
Date: Tue, 28 Apr 2020 13:02:55 +0530
Message-Id: <20200428073312.324684-1-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
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
 15.20.2958.19 via Frontend Transport; Tue, 28 Apr 2020 07:33:38 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [106.51.31.156]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c1bd5aaf-8719-41e6-490f-08d7eb467a79
X-MS-TrafficTypeDiagnostic: DM6PR04MB4538:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB45385629BC6BBE3638437D7B8DAC0@DM6PR04MB4538.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:133;
X-Forefront-PRVS: 0387D64A71
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(136003)(396003)(346002)(376002)(55016002)(6666004)(1006002)(8886007)(55236004)(956004)(2906002)(966005)(1076003)(2616005)(44832011)(86362001)(8676002)(5660300002)(16526019)(7416002)(478600001)(36756003)(66476007)(54906003)(26005)(186003)(4326008)(43170500005)(110136005)(66946007)(66556008)(8936002)(7696005)(316002)(52116002)(81156014)(42580500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: B9Nagv9jPhduMZSJsV/NMV4NavqqS5AX3iebDyKPJ96tDA7x6cACdBkEvCblrJH7vLIcgTF2itvUEER0G9bFFrFsBTgFyF6aCqZrBPtiENDF0vsbDTn29K31V2oLj8ig0nykscw6mvXqWx4dKs0Nu1HiqKY9joDvIXD09zSe2DLAxGWabIlBsDabp/CN18KG6MHZCITGzSt+smvNs/82xAsmLKJj2suOLGPoXRt/kogGnYAaJyq/qtllOYPV2AM85UAb7ZDRS8KiPiepxqzLVNIF2SCubH6wDKI8+OnrZmZxa59bqkyIZ7duTX+9aicsrbVhJx7fqfga3PWTN79iwKZr340CtAbo30QBwQ6DuzU71nejZZqMWH2NVj97yBMxdKph0vCCaMxKrRDa8ai8B5t0SRza2YCn4q/6X0RSmkO/5fuP0jkF4Zw0AGWnu6i1XRG+D8m7bZsK+90Ih4nUhhmx3SRxGM7AsRZnqOFjWKZEJB3xI+MraggZpEVOVWn+SUBAIpopsPszwskf85T9WskuZwmI+WIzyt8dBhA3LCBJ6BTfB/AqJIRXw36mGaB9jbsV3edcic63eVPkf/mXWsv+vuV8cd3fTWAoITOEwY0=
X-MS-Exchange-AntiSpam-MessageData: /TfhKQ+Q40xZztxOzCP0sekXDWKRZTkrO16iBwNjllxXaXHOPXoFX3vFBgS6/J51fDHx9uAaL8m7KFGBfMjABH7nTMP9AWh4BgDnY3eR3jDwNGOa+EcwGjTg2jVH/OMI+ivTGKmUH3btWGYivaAZTC2bL0d8bjLr4pg+gCes5SnUzgSoSd3TzoaUQHWVFwGEZXXjZx8UOjfpf+KNlbciofNeurKgfLC3TD7H3OabTbrXW07OJHQodP3ciJ1neTwQba9La8MD+Ph79bKQJy2/EFiZB9GQ/IBrFIlG89gCpL7JokkvQTGUrybX4KnhDGDHQI8CLjC1tvFnMtqwOUMv7br28bPROB+3DFgrrEE4jUvtOg4f8RHa4m2ke8/1ZHMMaYcuoCGzKxrxnGmqmShQJP/fRoj4Z2Lb2aqJmnw/tGUrI6WWi1SCmyWizdYHyzKNXZUiWr3X+v2u18p0Yg9sFqgdwcCXWRIVadxvJAnDZRjfz1T2RHOnw5ZVnApVc/oY3/CRXPGhWdP+x/GBI2uUk5PWONDAv19EG7TpPEDTTahHxalERL21L3DOqB/E2AJue4ldsPptK1t4a9KrTdfYG5D4oLubAcClZ6rINMOcgPaU0ZWnL6FXBzXnK41z6E3Lfrm8aKo2AmvCFudki99b5D4W4JUOtd1zMfG5YJgwFn5oBRP/4esYVbRuAjRKXcv/A3UX45+GBZ4c6I/QA8jmjbSCd3fj34anWYbpnXXD5Y9EKvh4Zr38ndfEh7viOjM7ST9iJ4Q7GImnOvT2S/zfy+nEIC2raB80pQI9+CCaX6I=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1bd5aaf-8719-41e6-490f-08d7eb467a79
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2020 07:33:43.2890 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F1Tk+cWX6rw6H8ylr8oEp3PBlPYEOGpDnzv1KdOLRRYqDyA5W36rUzcgjEAkBQI1oALb8/u9N2rjWpi0v7vb8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4538
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_003347_753169_74C851B6 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
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

This series adds initial KVM RISC-V support. Currently, we are able to boot
RISC-V 64bit Linux Guests with multiple VCPUs.

Few key aspects of KVM RISC-V added by this series are:
1. Minimal possible KVM world-switch which touches only GPRs and few CSRs.
2. Full Guest/VM switch is done via vcpu_get/vcpu_put infrastructure.
3. KVM ONE_REG interface for VCPU register access from user-space.
4. PLIC emulation is done in user-space.
5. Timer and IPI emuation is done in-kernel.
6. MMU notifiers supported.
7. FP lazy save/restore supported.
8. SBI v0.1 emulation for KVM Guest available.
9. Forward unhandled SBI calls to KVM userspace.
10. Hugepage support for Guest/VM

Here's a brief TODO list which we will work upon after this series:
1. SBI v0.2 emulation in-kernel
2. SBI v0.2 hart state management emulation in-kernel
3. In-kernel PLIC emulation
4. ..... and more .....

This series can be found in riscv_kvm_v12 branch at:
https//github.com/avpatel/linux.git

Our work-in-progress KVMTOOL RISC-V port can be found in riscv_v3 branch
at: https//github.com/avpatel/kvmtool.git

The QEMU RISC-V hypervisor emulation is done by Alistair and is available
in mainline/anup/riscv-hyp-ext-v0.6 branch at:
https://github.com/kvm-riscv/qemu.git

To play around with KVM RISC-V, refer KVM RISC-V wiki at:
https://github.com/kvm-riscv/howto/wiki
https://github.com/kvm-riscv/howto/wiki/KVM-RISCV64-on-QEMU

Changes since v11:
 - Rebased patches on Linux-5.7-rc3
 - Fixed typo in typecast of stage2_map_size define
 - Introduced struct kvm_cpu_trap to represent trap details and
   use it as function parameter wherever applicable
 - Pass memslot to kvm_riscv_stage2_map() for supporing dirty page
   logging in future
 - RISC-V H-Extension v0.6 spec support
 - Send-out first three patches as separate series so that it can
   be taken by Palmer for Linux RISC-V

Changes since v10:
 - Rebased patches on Linux-5.6-rc5
 - Reduce RISCV_ISA_EXT_MAX from 256 to 64
 - Separate PATCH for removing N-extension related defines
 - Added comments as requested by Palmer
 - Fixed HIDELEG CSR programming

Changes since v9:
 - Rebased patches on Linux-5.5-rc3
 - Squash PATCH19 and PATCH20 into PATCH5
 - Squash PATCH18 into PATCH11
 - Squash PATCH17 into PATCH16
 - Added ONE_REG interface for VCPU timer in PATCH13
 - Use HTIMEDELTA for VCPU timer in PATCH13
 - Updated KVM RISC-V mailing list in MAINTAINERS entry
 - Update KVM kconfig option to depend on RISCV_SBI and MMU
 - Check for SBI v0.2 and SBI v0.2 RFENCE extension at boot-time
 - Use SBI v0.2 RFENCE extension in VMID implementation
 - Use SBI v0.2 RFENCE extension in Stage2 MMU implementation
 - Use SBI v0.2 RFENCE extension in SBI implementation
 - Moved to RISC-V Hypervisor v0.5 draft spec
 - Updated Documentation/virt/kvm/api.txt for timer ONE_REG interface

Changes since v8:
 - Rebased series on Linux-5.4-rc3 and Atish's SBI v0.2 patches
 - Use HRTIMER_MODE_REL instead of HRTIMER_MODE_ABS in timer emulation
 - Fixed kvm_riscv_stage2_map() to handle hugepages
 - Added patch to forward unhandled SBI calls to user-space
 - Added patch for iterative/recursive stage2 page table programming
 - Added patch to remove per-CPU vsip_shadow variable
 - Added patch to fix race-condition in kvm_riscv_vcpu_sync_interrupts()

Changes since v7:
- Rebased series on Linux-5.4-rc1 and Atish's SBI v0.2 patches
- Removed PATCH1, PATCH3, and PATCH20 because these already merged
- Use kernel doc style comments for ISA bitmap functions
- Don't parse X, Y, and Z extension in riscv_fill_hwcap() because it will
  be added in-future
- Mark KVM RISC-V kconfig option as EXPERIMENTAL
- Typo fix in commit description of PATCH6 of v7 series
- Use separate structs for CORE and CSR registers of ONE_REG interface
- Explicitly include asm/sbi.h in kvm/vcpu_sbi.c
- Removed implicit switch-case fall-through in kvm_riscv_vcpu_exit()
- No need to set VSSTATUS.MXR bit in kvm_riscv_vcpu_unpriv_read()
- Removed register for instruction length in kvm_riscv_vcpu_unpriv_read()
- Added defines for checking/decoding instruction length
- Added separate patch to forward unhandled SBI calls to userspace tool

Changes since v6:
- Rebased patches on Linux-5.3-rc7
- Added "return_handled" in struct kvm_mmio_decode to ensure that
  kvm_riscv_vcpu_mmio_return() updates SEPC only once
- Removed trap_stval parameter from kvm_riscv_vcpu_unpriv_read()
- Updated git repo URL in MAINTAINERS entry

Changes since v5:
- Renamed KVM_REG_RISCV_CONFIG_TIMEBASE register to
  KVM_REG_RISCV_CONFIG_TBFREQ register in ONE_REG interface
- Update SPEC in kvm_riscv_vcpu_mmio_return() for MMIO exits
- Use switch case instead of illegal instruction opcode table for simplicity
- Improve comments in stage2_remote_tlb_flush() for a potential remote TLB
  flush optimization
- Handle all unsupported SBI calls in default case of
  kvm_riscv_vcpu_sbi_ecall() function
- Fixed kvm_riscv_vcpu_sync_interrupts() for software interrupts
- Improved unprivilege reads to handle traps due to Guest stage1 page table
- Added separate patch to document RISC-V specific things in
  Documentation/virt/kvm/api.txt

Changes since v4:
- Rebased patches on Linux-5.3-rc5
- Added Paolo's Acked-by and Reviewed-by
- Updated mailing list in MAINTAINERS entry

Changes since v3:
- Moved patch for ISA bitmap from KVM prep series to this series
- Make vsip_shadow as run-time percpu variable instead of compile-time
- Flush Guest TLBs on all Host CPUs whenever we run-out of VMIDs

Changes since v2:
- Removed references of KVM_REQ_IRQ_PENDING from all patches
- Use kvm->srcu within in-kernel KVM run loop
- Added percpu vsip_shadow to track last value programmed in VSIP CSR
- Added comments about irqs_pending and irqs_pending_mask
- Used kvm_arch_vcpu_runnable() in-place-of kvm_riscv_vcpu_has_interrupt()
  in system_opcode_insn()
- Removed unwanted smp_wmb() in kvm_riscv_stage2_vmid_update()
- Use kvm_flush_remote_tlbs() in kvm_riscv_stage2_vmid_update()
- Use READ_ONCE() in kvm_riscv_stage2_update_hgatp() for vmid

Changes since v1:
- Fixed compile errors in building KVM RISC-V as module
- Removed unused kvm_riscv_halt_guest() and kvm_riscv_resume_guest()
- Set KVM_CAP_SYNC_MMU capability only after MMU notifiers are implemented
- Made vmid_version as unsigned long instead of atomic
- Renamed KVM_REQ_UPDATE_PGTBL to KVM_REQ_UPDATE_HGATP
- Renamed kvm_riscv_stage2_update_pgtbl() to kvm_riscv_stage2_update_hgatp()
- Configure HIDELEG and HEDELEG in kvm_arch_hardware_enable()
- Updated ONE_REG interface for CSR access to user-space
- Removed irqs_pending_lock and use atomic bitops instead
- Added separate patch for FP ONE_REG interface
- Added separate patch for updating MAINTAINERS file

Anup Patel (13):
  RISC-V: Add hypervisor extension related CSR defines
  RISC-V: Add initial skeletal KVM support
  RISC-V: KVM: Implement VCPU create, init and destroy functions
  RISC-V: KVM: Implement VCPU interrupts and requests handling
  RISC-V: KVM: Implement KVM_GET_ONE_REG/KVM_SET_ONE_REG ioctls
  RISC-V: KVM: Implement VCPU world-switch
  RISC-V: KVM: Handle MMIO exits for VCPU
  RISC-V: KVM: Handle WFI exits for VCPU
  RISC-V: KVM: Implement VMID allocator
  RISC-V: KVM: Implement stage2 page table programming
  RISC-V: KVM: Implement MMU notifiers
  RISC-V: KVM: Document RISC-V specific parts of KVM API
  RISC-V: KVM: Add MAINTAINERS entry

Atish Patra (4):
  RISC-V: KVM: Add timer functionality
  RISC-V: KVM: FP lazy save/restore
  RISC-V: KVM: Implement ONE REG interface for FP registers
  RISC-V: KVM: Add SBI v0.1 support

 Documentation/virt/kvm/api.rst          | 193 ++++-
 MAINTAINERS                             |  11 +
 arch/riscv/Kconfig                      |   2 +
 arch/riscv/Makefile                     |   2 +
 arch/riscv/include/asm/csr.h            |  85 ++
 arch/riscv/include/asm/kvm_host.h       | 272 +++++++
 arch/riscv/include/asm/kvm_vcpu_timer.h |  44 ++
 arch/riscv/include/asm/pgtable-bits.h   |   1 +
 arch/riscv/include/uapi/asm/kvm.h       | 127 +++
 arch/riscv/kernel/asm-offsets.c         | 154 ++++
 arch/riscv/kvm/Kconfig                  |  34 +
 arch/riscv/kvm/Makefile                 |  14 +
 arch/riscv/kvm/main.c                   |  97 +++
 arch/riscv/kvm/mmu.c                    | 775 ++++++++++++++++++
 arch/riscv/kvm/tlb.S                    |  43 +
 arch/riscv/kvm/vcpu.c                   | 996 ++++++++++++++++++++++++
 arch/riscv/kvm/vcpu_exit.c              | 654 ++++++++++++++++
 arch/riscv/kvm/vcpu_sbi.c               | 172 ++++
 arch/riscv/kvm/vcpu_switch.S            | 391 ++++++++++
 arch/riscv/kvm/vcpu_timer.c             | 225 ++++++
 arch/riscv/kvm/vm.c                     |  86 ++
 arch/riscv/kvm/vmid.c                   | 120 +++
 drivers/clocksource/timer-riscv.c       |   8 +
 include/clocksource/timer-riscv.h       |  16 +
 include/uapi/linux/kvm.h                |   8 +
 25 files changed, 4521 insertions(+), 9 deletions(-)
 create mode 100644 arch/riscv/include/asm/kvm_host.h
 create mode 100644 arch/riscv/include/asm/kvm_vcpu_timer.h
 create mode 100644 arch/riscv/include/uapi/asm/kvm.h
 create mode 100644 arch/riscv/kvm/Kconfig
 create mode 100644 arch/riscv/kvm/Makefile
 create mode 100644 arch/riscv/kvm/main.c
 create mode 100644 arch/riscv/kvm/mmu.c
 create mode 100644 arch/riscv/kvm/tlb.S
 create mode 100644 arch/riscv/kvm/vcpu.c
 create mode 100644 arch/riscv/kvm/vcpu_exit.c
 create mode 100644 arch/riscv/kvm/vcpu_sbi.c
 create mode 100644 arch/riscv/kvm/vcpu_switch.S
 create mode 100644 arch/riscv/kvm/vcpu_timer.c
 create mode 100644 arch/riscv/kvm/vm.c
 create mode 100644 arch/riscv/kvm/vmid.c
 create mode 100644 include/clocksource/timer-riscv.h

-- 
2.25.1


