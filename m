Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46CC51841BD
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 08:52:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MZXfq+B+WvVPCXXZGdErudd9I49gW2xsEXvUNBRIues=; b=Dlo
	aI9ps80Qs3/jGxQfApbBBf2n/+cNJCZv/KYOWuTIaukIHC1zAzvLYeWgL3EzLhbAz9ycratXR8U+o
	fWTZxTPKuY9zgFD69MW+txhUZpFytAAIAGo2yTEbLzJrNikDoFk+QEYvdITxBExt+X/572kY7JWNa
	SxmHJhx8kZXTes+QiN05fnj5M0VdCk+nwpFJKdohhCqjWYyh1FqodcoBFiIBZ0unhiJy9XgE/lxNQ
	uK9SXSOip51e8QtQSoT3pd2JI00LkJRUi8yvyUMjx3CwjkD0QZ36275CT6XghDGe/s0Lowl1UGuuH
	1e97fgDWtGsiba3+Rv1vhw15/wDVeUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCf7D-0008Pe-L0; Fri, 13 Mar 2020 07:52:19 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCf78-0008Nh-SZ; Fri, 13 Mar 2020 07:52:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584085934; x=1615621934;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=Teg9eEb5VJP+1Ss6lnd1Nc66hYDKd/EM9PavZThU0UU=;
 b=ibiyj1N7GiyxOyWnKv/JbEN3c9hhXMX3jqGpnKECkRH+Rk5kE2cIr0VU
 q7/1po3Mh3ymP9fT3O25uabBeegMeg7gFYx3TbR8Eb5jCX6GsYhql1W8m
 jc4zBaWUSsFOMYNpDsrFm/ECeYbWvqAe/5MVUqGPU6xIA19Gjmg4gCuPF
 ZIhnunclxQPXuoETFlS4aa/R4Fi7nwlLgSlTOqx0xCexarxlls1E6D6yh
 sK5kPeBh2K+uWVfQs1f1aOcmLHJUObwYLPhFcaWBJ0jKuy3bd1LhcTz1j
 rS7UQrVenPojKoKqRpU73eXOyIW9wr2f+Y9G5564GXNh5asxbieIaa57k Q==;
IronPort-SDR: VEV4J6w4MuFlWGNQKZK++0QKfFgUqVkbj3J2PN0eEI1viYCj6oR2woy6Vw5cWRtQSYfOaUhFNE
 o2I0mHiTBZTJ8fFGoFTvAVSKiJ1mG7q9QkdxzorrsNiWAJ4MCAmfGBjoPftPSG0GHkZUMVbZoY
 zkMdTQacN4cMESyUNhiBmHf9Wp+lVwfmF6mErpnISpMaCPq6CzqOjPu9nV+U5chJNUMmaQJz/O
 nk2GljfA6iRcbGQozuSrkpnqABB2etkF2Ggyw6VMpY2cd0qXu1oS6KsFdEk/1KGmxddta/LCOO
 HHY=
X-IronPort-AV: E=Sophos;i="5.70,547,1574092800"; d="scan'208";a="132374480"
Received: from mail-bn8nam12lp2173.outbound.protection.outlook.com (HELO
 NAM12-BN8-obe.outbound.protection.outlook.com) ([104.47.55.173])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 15:52:10 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OBkbf8n8BW3Ymh3Di5aNzRO9US5uWW4Z8Uh8uchddPHvGs4MRucJhVtfd6/YsDg/CXCOI8CGquqhOhkW0mCYJx3v+j5I9mdtI50KakSm0ZDX0JgaM+ka84S1de6kj3GNhf5tNEGg6y149AyeMCLO9XUTdV1Jg6to7KVRLbnxcNXz3rKVPElFWg7/XMzBMdebgY1HFSZfga5TES8X7KUPRkdXzg7yWAVfJAPvR+5iiDyT+1d1PTnVsq0b+Uvaf9uE6ubkz6ry2UhvnQKDt+7oGs1xejwlkTRYoCn1Wm0+7/tK5f04K/1YQJ2NL13kqvqqDhv6r/e+FNJ0GWXKQOBhtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MZXfq+B+WvVPCXXZGdErudd9I49gW2xsEXvUNBRIues=;
 b=YdB6YL4ZS/AntChaQFQg5GhaOKPgGc/hfyyBml7XU+xFdH99K2/ptv+0pgSf1dapVzzysZ2ZQbdxIjfRS4DCVOXC0bLjzydiv/DjMP3qAkyhrrABx6PWiTc1098PfwcfdWkIzVTONfUkc8BasP16tPkFm5upK/gVzU/h8tRgAEIpufBcFpLE8ubv0LkqPikxvMbksOk1urlOgYzksbB/CoBGoYI9IyEmmzsliQXpqTRHMaRMmYP3AFJZSaHJzQcNvBZBsFRNdCDWtwYCgG026Lf2ORLhWTe6NNRCY3N4pgs1pLkrE11pEV6Z64Hb21ON2gsPM/B79i1qr2aQoLXUDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MZXfq+B+WvVPCXXZGdErudd9I49gW2xsEXvUNBRIues=;
 b=q2KR/vLyHzwrKSiWauVNDHoicxiANT/lgZ6rRNMQ0d/c+DcyM/jM5FNzaFq7Hnx9zKPhlb1/Z8dcPp4wbDozbGZzOjTGNdiYNb+WXm39XIvNFNBDS42O9DoojwSqORd7gS6VJwqeLNamXKPkHuwAfhDqJG0B0z6LemliHaak9bA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (2603:10b6:208:d8::15)
 by MN2PR04MB6637.namprd04.prod.outlook.com (2603:10b6:208:1ef::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16; Fri, 13 Mar
 2020 07:52:08 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8%6]) with mapi id 15.20.2814.018; Fri, 13 Mar 2020
 07:52:08 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Paolo Bonzini <pbonzini@redhat.com>,
 Radim K <rkrcmar@redhat.com>
Subject: [PATCH v11 00/20] KVM RISC-V Support
Date: Fri, 13 Mar 2020 13:21:11 +0530
Message-Id: <20200313075131.69837-1-anup.patel@wdc.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain
X-ClientProxiedBy: MA1PR0101CA0057.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:20::19) To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (1.39.129.91) by
 MA1PR0101CA0057.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:20::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14 via Frontend
 Transport; Fri, 13 Mar 2020 07:51:52 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [1.39.129.91]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 6934446b-cb62-4f4f-1a41-08d7c7236dfe
X-MS-TrafficTypeDiagnostic: MN2PR04MB6637:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR04MB66379CD0FF47B58E584F6D1C8DFA0@MN2PR04MB6637.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:277;
X-Forefront-PRVS: 034119E4F6
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(346002)(376002)(136003)(396003)(366004)(199004)(6666004)(1006002)(4326008)(8886007)(8676002)(81156014)(478600001)(7696005)(5660300002)(8936002)(36756003)(81166006)(52116002)(1076003)(44832011)(66476007)(26005)(316002)(66946007)(956004)(55016002)(186003)(2616005)(16526019)(966005)(54906003)(2906002)(7416002)(66556008)(86362001)(110136005)(36456003)(42580500001)(42976004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6637;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ONIGGv7VVDmDECE8HRYlxYmuJnlxtZWJ3BI9m4P0fkc/W0hbOG5w0IZAEGTKwbO3IlsxPJiqgseYdqSC6TrPwjc/xD+yWjKJ3SYZSh1mNtpAJclGSaO1jDlkFcikb8Rqv5Xo8uGJoE8IA+L5/W8t9Giqk6Q2f+zZqiTLak4v0PiJUFbbuPnxQP/cgQUVe8W/g2qUc9odQuHyWjLxUbd5TIAXjskKHokeZLCdiCx2nSYFt5VZwB7yvTTEFEjCAgnLaeJd6yDQCiogarhdKB4+KXcUUWggENO9CHjSlrUpLxsHAncd4T9OJfdQihXrQ0zwGljF9leTNNcowMinMpCfUcXE6conl7y713h6hVr4UfioUR+9f7v9+CkZXFU4N8Jt9MD7iPZNz3y7BMVzccL7If4h/EyOCEqJex1bDTQD/7ZGOfTYkmQ89lhnqHzvAwq6xgYDJxKC4Ay2NDDDTIiP9MWNF5vYJY8sCy//0bEtho7F+kpF9JjWmMpWaUFjn5+7TmIygLwbzMUGSyUVHxlgudGxD+sP1yhOFDQUaYaiqZ4VIyseokZ3mhLRV7q4vRrdd8Hm/Xl8DZh+gOQn8BM7mUVt5aSb1iA3Qc8Kuj8l6jwUPi6hhZQC3ksjquR2rm0X
X-MS-Exchange-AntiSpam-MessageData: bGY4UbLm9HYLUIGw9IhZNflNFTNs0uXv2VUC5HMbBAw0PqkNyTyaxxo0+jcDIxCcVJWL0tPJBhKMDyw4cHPRLq6h5VCSS85NSDx9C+kST5MHYMHLWwgndUbXDhh7gSv9IURgHnsEuygHJqkANKjfVA==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6934446b-cb62-4f4f-1a41-08d7c7236dfe
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2020 07:52:08.6222 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bvxb7ZMAYM4VlkFfNkXhOQRzBt8qZ+vU5vQmx5HlhQXxzz1AFJ/mxLJ2MfzBDMY/7NbkEeMTOzKl6/E83jHF8g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_005215_052558_C8118766 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
 Alexander Graf <graf@amazon.com>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
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

This series can be found in riscv_kvm_v11 branch at:
https//github.com/avpatel/linux.git

Our work-in-progress KVMTOOL RISC-V port can be found in riscv_v2 branch
at: https//github.com/avpatel/kvmtool.git

The QEMU RISC-V hypervisor emulation is done by Alistair and is available
in mainline/anup/riscv-hyp-ext-v0.5.3 branch at:
https://github.com/kvm-riscv/qemu.git

To play around with KVM RISC-V, refer KVM RISC-V wiki at:
https://github.com/kvm-riscv/howto/wiki
https://github.com/kvm-riscv/howto/wiki/KVM-RISCV64-on-QEMU

Changes since v10:
 - Rebased patches on Linux-5.6-rc5
 - Reduce RISCV_ISA_EXT_MAX from 256 to 64
 - Separate PATCH for removing N-extension related defines
 - Added comments as requested by Palmer
 - Fixed HIDELEG CSR programming

Changes since v9:
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
 - Rebased patches on Linux-5.5-rc3

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

Anup Patel (16):
  RISC-V: Export riscv_cpuid_to_hartid_mask() API
  RISC-V: Add bitmap reprensenting ISA features common across CPUs
  RISC-V: Remove N-extension related defines
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
 arch/riscv/include/asm/csr.h            |  78 +-
 arch/riscv/include/asm/hwcap.h          |  22 +
 arch/riscv/include/asm/kvm_host.h       | 264 +++++++
 arch/riscv/include/asm/kvm_vcpu_timer.h |  44 ++
 arch/riscv/include/asm/pgtable-bits.h   |   1 +
 arch/riscv/include/uapi/asm/kvm.h       | 127 +++
 arch/riscv/kernel/asm-offsets.c         | 148 ++++
 arch/riscv/kernel/cpufeature.c          |  83 +-
 arch/riscv/kernel/smp.c                 |   2 +
 arch/riscv/kvm/Kconfig                  |  34 +
 arch/riscv/kvm/Makefile                 |  14 +
 arch/riscv/kvm/main.c                   |  97 +++
 arch/riscv/kvm/mmu.c                    | 762 ++++++++++++++++++
 arch/riscv/kvm/tlb.S                    |  43 +
 arch/riscv/kvm/vcpu.c                   | 997 ++++++++++++++++++++++++
 arch/riscv/kvm/vcpu_exit.c              | 639 +++++++++++++++
 arch/riscv/kvm/vcpu_sbi.c               | 171 ++++
 arch/riscv/kvm/vcpu_switch.S            | 382 +++++++++
 arch/riscv/kvm/vcpu_timer.c             | 225 ++++++
 arch/riscv/kvm/vm.c                     |  86 ++
 arch/riscv/kvm/vmid.c                   | 120 +++
 drivers/clocksource/timer-riscv.c       |   8 +
 include/clocksource/timer-riscv.h       |  16 +
 include/uapi/linux/kvm.h                |   8 +
 28 files changed, 4564 insertions(+), 15 deletions(-)
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
2.17.1


