Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 541FF1841F1
	for <lists+linux-riscv@lfdr.de>; Fri, 13 Mar 2020 08:58:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NSdJ4PfdlFJVjQ3OtupZHstMU6rZxhSt+M05Rz6UEFQ=; b=FRHCKgGfiwUR3Fw/IDD5S/ltP
	FCfbQJFcVWMib+f1U5mF3/tWIZgMR3JPXKQhzDVmqfS4sqXCdi8FDROMBpHkGakSHNAj+/YoVzKAf
	XpPAIB9Wulvj5cVbqzQLpzgGRAhxAHgTDc6NT0YwmHq5Uz5wa4KYLuX+kFjBSYFNP9POZxzw9XPq2
	D8BTeWkQftpi8NNs4uLl4hIJeHXfTQfmXt0s0F4IYTlgMWh1/1P5531M4Xk5m87C8hjHIMs5vTPKn
	h2ikasTVgl1/ocIeSGsRt5v+byuRPlVZItbiAm7ZOCMmeVZZiPEgiJP7g6rzVmXXBpsny9F7yKAVl
	wKPPwWbMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCfDJ-0003NR-F6; Fri, 13 Mar 2020 07:58:37 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCfDE-0003Ih-Fq; Fri, 13 Mar 2020 07:58:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1584086313; x=1615622313;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=tcSoLy1EnieZpT0caedtjDa7Hpimh/vLp79G6OSD2BY=;
 b=FFdq3xgR8QBrE8PuX8QR//4RYXJ/NO5DX0rCPY800VHJ8j3u9C3q37e7
 pEbynkcU8vDzi2dvG0akVs8JdiFyaquZXqkr9eFdj7vF0NkqvabK2LeCQ
 P3wWCaDHFI/wdIh1/AJ8AXlHwsoX0G8DTh0Zwafd3B5Y8uOEPHYB86evg
 4HSEPAHr29VWycE4ZrCSSWKQsZ4MOXILZrC24xNlCE0PgY2mjFgNVQnJa
 SuVjauNWn1HCq7kKXnzc7jAwy7FwNk9xn4t7iuev1pk2YAQ9nZAQi37o6
 +jhT4nONAdB3PnybTMhrG/cq9twXzOyadwYsNhtjih4LlrJEUD/XPnSwa A==;
IronPort-SDR: jbkrVR86R3XzxN7KyTX9N+3CEqO369pBZW9jydZUFhFMH87+HB8lndmSIuR0X2GYaGJMNSNAj0
 UQQM5yzf5thgxtj+fdefc55CUiDmr/a0yuycFMuBHhGbpnuRNhZn5Ype+qv+iRMdo30Jc/fmh1
 47AUcyE17dposchMhXD8BGbl/6TN2HbmxM+CvlzRzaZly96uGQ/uvnThYc1poPCCeIXGlQlbwq
 vLqfbXSFR6AwEQ0YrtB3W61tAJ55LxIhJQRWrAiy/Wgpd1Vws/6rVpRKp4f/S6HfkEATgVh7wj
 pfI=
X-IronPort-AV: E=Sophos;i="5.70,547,1574092800"; d="scan'208";a="136737260"
Received: from mail-cys01nam02lp2053.outbound.protection.outlook.com (HELO
 NAM02-CY1-obe.outbound.protection.outlook.com) ([104.47.37.53])
 by ob1.hgst.iphmx.com with ESMTP; 13 Mar 2020 15:58:26 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aRw2WbYLzQcZLiMEwkkD0HkluvdibWPdApg8zol/1N/BC9FKDXKq2k3XgsVfQJjJu8XBBpSnxQPCxxnSuLL2H9/WK1UYS5RtUMh/W4FTB9OXEB46kqfbRPZID2JovmmV1vLmlLcp/2GhlMSdqzV83wRLH2IR+tmoI+ND613FSOC2d1fwpO6LcbQyW7vf8HOKL/90Taad0mVx/SGVFoBUv0nDoBFte+e6SAAeR3dB98/HFdKjYFrtxf/EwGzjUd8WZyEREJKwrBb4IyKsYOIcYGA1F2IyVOOs2Pz64ADvphYb+pi2qtYRha4+AZUoBnGXwPcC6+y52znPB4drAPDHsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NSdJ4PfdlFJVjQ3OtupZHstMU6rZxhSt+M05Rz6UEFQ=;
 b=UvPuW+mNLB3b0jYzBy4s9Dkb0vqsiwNrVF9AAy/QTxmVvq9XF2YXYgP8hA7+68bpokxlDGHLtLxqhWbl/hmdbLu0xZ0JZcnvbYyfzxRLKTvL/kgGo0f1HBwZV4dauloqDMs9a3Qb4nWFcLtfcwjrEo2RuE09gYCaaIQgT5/s/LbQCoKuNo7XTrO01qobnVsQToe5YqL/7s1GMUPLEZZhBjBFHiiqYyvspz9aZuHfSeXfu/jo1yCNuMdTa66OKN3UwzJbbvFcM5gbRcXEe/lOboeLfPEV5ewwfionXSva2FDqpDIgNUAuWvUXgGJPcmssbJM3aTLJHcwWG+aw16o/sg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NSdJ4PfdlFJVjQ3OtupZHstMU6rZxhSt+M05Rz6UEFQ=;
 b=G33bbtNvZhFgkoRsOmDlL6aQgjR2JJLdI7iaNTOFVea0IAgVv7O52k4A5IhswWGP/8VtDJrgVz4ruTjDwS3kuGMeyZ/jOs68sOC4SXk5FuFGXRHl43FxvW4bEYjAH2UMV3Ma9WXkpCZuSvr1HvUY7+xSkuPBl5th7GbOGvFdRW4=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (2603:10b6:208:d8::15)
 by MN2PR04MB6944.namprd04.prod.outlook.com (2603:10b6:208:1ed::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14; Fri, 13 Mar
 2020 07:58:24 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::159d:10c9:f6df:64c8%6]) with mapi id 15.20.2814.018; Fri, 13 Mar 2020
 07:58:23 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Paolo Bonzini <pbonzini@redhat.com>,
 Radim K <rkrcmar@redhat.com>
Subject: [PATCH v11 11/20] RISC-V: KVM: Handle WFI exits for VCPU
Date: Fri, 13 Mar 2020 13:21:22 +0530
Message-Id: <20200313075131.69837-12-anup.patel@wdc.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313075131.69837-1-anup.patel@wdc.com>
References: <20200313075131.69837-1-anup.patel@wdc.com>
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
 Transport; Fri, 13 Mar 2020 07:58:16 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [1.39.129.91]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 04c69c8e-60cd-47a9-499e-08d7c7244dda
X-MS-TrafficTypeDiagnostic: MN2PR04MB6944:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR04MB694457021CD9F6CDBF55E85E8DFA0@MN2PR04MB6944.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:2887;
X-Forefront-PRVS: 034119E4F6
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(376002)(136003)(346002)(396003)(366004)(199004)(26005)(4326008)(44832011)(55016002)(1076003)(8936002)(478600001)(86362001)(36756003)(66556008)(16526019)(66946007)(956004)(66476007)(186003)(2616005)(316002)(7416002)(6666004)(1006002)(110136005)(8886007)(8676002)(2906002)(81166006)(81156014)(5660300002)(54906003)(52116002)(7696005)(36456003)(42976004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6944;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EAn2BgCfnsBRRyisMyiPyWMmzmXbjfGIXAZAa7R9iNXQf2iVqi0l3WyQgENWLl/l4I9GCSeSSaqi/1c5YEpW8frprGUxrAf0tRla+7cbDJycXE1H8MwB0ClfHTP0MPLFRpg+WddYBeX6dgG2e44ZujMRh0ZKEl2Cz1vdg7riM6W/lLcGlLxs28OWIgC0wy6rM3mVTVoZvqqrwig7NrDW3tu0ZnF7lw/AacmJ8XA2AaerPSvtyPGKvHbU5c3YsjexbAsJrgOh5LkDGKW5PToOa3CRq8olcCi2ba6abaDcmcckqIfzNUgHZ8QL0zcqu3T8k96o8g2k21unRZSBH23b5jgROg7RdG9raE+s+3DsOpFoPYHsSJPEEKJHg6G0JnM37Y8xWzIylogKBfYMrNx0gDxQVFa4li4N41mYoH3Gf9GxwScXsMg0hgF2V9SyFb4rYMxR2+2GkTCLcmnzZLcOZSaPmQKIV9gkf0vHlqIXMsWaMF4rFOrAfsqDb8InVwsHFkPIjzTGGJoN86WVBLXr3Q==
X-MS-Exchange-AntiSpam-MessageData: RIbT1J/UoYm5jAdCEFL/49YVqndJbUlJtSRwaLORlkwOEDn0rkZx42OxliIEJhesUiZ1kTk/u5yLyUcFTuM/bvK0rdWDeJcriQ3NAZ1lFSfH9hAfLhz43CkkXm2elgbGAPaN2WtYSWGqjYGtdJfTFA==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04c69c8e-60cd-47a9-499e-08d7c7244dda
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2020 07:58:23.8104 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SNSTmB4SQSrLMHIc7Z3ENIgpYxJ3Rr9LX7elIxvqjD/Xqzuej0jr9xUBiy1tI042EU5iei6bv66yr6DCNW8kFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6944
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_005832_573036_64131D52 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
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

We get illegal instruction trap whenever Guest/VM executes WFI
instruction.

This patch handles WFI trap by blocking the trapped VCPU using
kvm_vcpu_block() API. The blocked VCPU will be automatically
resumed whenever a VCPU interrupt is injected from user-space
or from in-kernel IRQCHIP emulation.

Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
---
 arch/riscv/kvm/vcpu_exit.c | 72 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/riscv/kvm/vcpu_exit.c b/arch/riscv/kvm/vcpu_exit.c
index cbf973c5f2fb..8d0ae1a23b70 100644
--- a/arch/riscv/kvm/vcpu_exit.c
+++ b/arch/riscv/kvm/vcpu_exit.c
@@ -12,6 +12,13 @@
 #include <linux/kvm_host.h>
 #include <asm/csr.h>
 
+#define INSN_OPCODE_MASK	0x007c
+#define INSN_OPCODE_SHIFT	2
+#define INSN_OPCODE_SYSTEM	28
+
+#define INSN_MASK_WFI		0xffffff00
+#define INSN_MATCH_WFI		0x10500000
+
 #define INSN_MATCH_LB		0x3
 #define INSN_MASK_LB		0x707f
 #define INSN_MATCH_LH		0x1003
@@ -116,6 +123,67 @@
 				 (s32)(((insn) >> 7) & 0x1f))
 #define MASK_FUNCT3		0x7000
 
+static int truly_illegal_insn(struct kvm_vcpu *vcpu,
+			      struct kvm_run *run,
+			      ulong insn)
+{
+	/* Redirect trap to Guest VCPU */
+	kvm_riscv_vcpu_trap_redirect(vcpu, EXC_INST_ILLEGAL, insn);
+
+	return 1;
+}
+
+static int system_opcode_insn(struct kvm_vcpu *vcpu,
+			      struct kvm_run *run,
+			      ulong insn)
+{
+	if ((insn & INSN_MASK_WFI) == INSN_MATCH_WFI) {
+		vcpu->stat.wfi_exit_stat++;
+		if (!kvm_arch_vcpu_runnable(vcpu)) {
+			srcu_read_unlock(&vcpu->kvm->srcu, vcpu->arch.srcu_idx);
+			kvm_vcpu_block(vcpu);
+			vcpu->arch.srcu_idx = srcu_read_lock(&vcpu->kvm->srcu);
+			kvm_clear_request(KVM_REQ_UNHALT, vcpu);
+		}
+		vcpu->arch.guest_context.sepc += INSN_LEN(insn);
+		return 1;
+	}
+
+	return truly_illegal_insn(vcpu, run, insn);
+}
+
+static int illegal_inst_fault(struct kvm_vcpu *vcpu, struct kvm_run *run,
+			      unsigned long insn)
+{
+	unsigned long ut_scause = 0;
+	struct kvm_cpu_context *ct;
+
+	if (unlikely(INSN_IS_16BIT(insn))) {
+		if (insn == 0) {
+			ct = &vcpu->arch.guest_context;
+			insn = kvm_riscv_vcpu_unpriv_read(vcpu, true,
+							  ct->sepc,
+							  &ut_scause);
+			if (ut_scause) {
+				if (ut_scause == EXC_LOAD_PAGE_FAULT)
+					ut_scause = EXC_INST_PAGE_FAULT;
+				kvm_riscv_vcpu_trap_redirect(vcpu, ut_scause,
+							     ct->sepc);
+				return 1;
+			}
+		}
+		if (INSN_IS_16BIT(insn))
+			return truly_illegal_insn(vcpu, run, insn);
+	}
+
+	switch ((insn & INSN_OPCODE_MASK) >> INSN_OPCODE_SHIFT) {
+	case INSN_OPCODE_SYSTEM:
+		return system_opcode_insn(vcpu, run, insn);
+	default:
+		return truly_illegal_insn(vcpu, run, insn);
+	}
+}
+
 static int emulate_load(struct kvm_vcpu *vcpu, struct kvm_run *run,
 			unsigned long fault_addr, unsigned long htinst)
 {
@@ -537,6 +605,10 @@ int kvm_riscv_vcpu_exit(struct kvm_vcpu *vcpu, struct kvm_run *run,
 	ret = -EFAULT;
 	run->exit_reason = KVM_EXIT_UNKNOWN;
 	switch (scause) {
+	case EXC_INST_ILLEGAL:
+		if (vcpu->arch.guest_context.hstatus & HSTATUS_SPV)
+			ret = illegal_inst_fault(vcpu, run, stval);
+		break;
 	case EXC_INST_GUEST_PAGE_FAULT:
 	case EXC_LOAD_GUEST_PAGE_FAULT:
 	case EXC_STORE_GUEST_PAGE_FAULT:
-- 
2.17.1


