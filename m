Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A9C1D5F27
	for <lists+linux-riscv@lfdr.de>; Sat, 16 May 2020 08:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=b+pxkYWY89LjURYHXKn7eE5s0eh6YNR6wXbSTl1Oe7w=; b=OTB/RRtN8Gfuuotugay9wXqMrs
	RKWMi8iX+wqBeuM2TIfhGr7sUPzwwlTzpatVyIDutmyhsGHXZ+FJ09irgoh2v0x+joZ7za0khiI0O
	dX2sMFl88gkdi5OvpZTnZNFIO7rZLQcOb+/b8AQh8ISY/4l0okjLIZQLSAQi4Z2XbU3uPte/waf73
	bqVVsuHHnGOA2ViKDbAqO51zaZNbem4bf8uLD4jipdK6wzOJNtox4fagdYx3IlWj4xC/pUG7MSh6E
	Myeg2KrLMabiNgGX8x/zr4hrbSXWvvFV8jTv+MIHs3XPRJ4lZvXLth5GacBl2gekPOXgKCA5Sbmfu
	krYYSOTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZqTt-0006wM-Fy; Sat, 16 May 2020 06:39:33 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZqTp-0006p6-TF
 for linux-riscv@lists.infradead.org; Sat, 16 May 2020 06:39:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1589611175; x=1621147175;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=Wt3azPXfUVl0RMdCuK//fKY9HSzhZ/q+8Z8VdRFT6Wo=;
 b=i+igG9fNLNuMBxssqxhro2W9Nh+EyYgEXXGsp7MDJv15nAkTAEgtsy7K
 T5ofI5X0ldAOWu3o0Hb0ujM5D3Cazs88mV7BnBp+kxxN+K2CyZLJ7TJRB
 oHQFahsUDbkCLffFUoTlCrBs/IenOLI0xZh36KesczpRSoKunEekRmj4I
 pBUrN9/TOiq8MRZddPnGwcFvtiqwnPmQdTjXf+REvsJawxtPMFBgSe7La
 l7IdSNgU+mb7SbSpHTOtNGqhXJ/HYOT1ATKQ3HD7QecpdK+GOiA8tcmXQ
 hGNdsY4pGlHCh1n9VfymypqbVlHG2cabaGIlLIYicJpkB90myIhK7Ugkg w==;
IronPort-SDR: cVkn3kmiDrS9jcP5gltEoq10nvjZFIrVZ/jDybMFbiuUmEcL4Bie7v6Oa4Nxabiioh8epinPJ8
 3PVZzporKQaJqi4ZE4r/sm2dnLDkWlwhnFc54sAI8gtsing6J+XHK6CzlHMMhmhCFF2BdhjMaO
 Oy39fjJttsHZBOVcWznIQIdQGqQ8/oOiN0JDw7Xa49cmtGzyUvJVdzaEk0FUXOQE0gyHZlF9ZB
 OzBoPR5M2nrbpNKNZV8XYdALyCIdMYP/ftmE3O4iElzN1KFvIeL4TGrIjcvqiJJjAc9vn6w5ZW
 rHc=
X-IronPort-AV: E=Sophos;i="5.73,398,1583164800"; d="scan'208";a="240555224"
Received: from mail-sn1nam04lp2059.outbound.protection.outlook.com (HELO
 NAM04-SN1-obe.outbound.protection.outlook.com) ([104.47.44.59])
 by ob1.hgst.iphmx.com with ESMTP; 16 May 2020 14:39:33 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BnMleQNWmK0TH/8xuKDsIzw8iE1MXXYsIZLNcvHrfECPdqK8ctZV0tE+o0m1d0g6d6APJtEpuZ0d37cCkOBDc55HOD8SBZ517w0ogBfN+tQ4IKvwliDqw2j3zMnR7jlBN9Sj5LaMBU2iVSDKIj18k/Z41wd3IZtLB9CLKiw2PYkOAn9xmSNPGM7jkPqvmZAUrxY8hUXhcW1NlDhn2aFFyTLTGRKJIbDq2k9FCkaImp5igd6iaYuRbpMZeEEzx+w/L/6mwlHQ+E1Hxvwg71DcRECm87So/BB7RwxrfiOPv1lJ1ZJb/0w+WWU5FWiUASbSMRMk1DQEmyafUWd9cjMOaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b+pxkYWY89LjURYHXKn7eE5s0eh6YNR6wXbSTl1Oe7w=;
 b=D14iPgZSKwYV8lctswQYv1uqBFevw1rO2T7WC5jVRYZARWF0mshLm0MedmHmgH7rzZTRCpX5fdyoqOcDimOxql1vSZ09fjuNroCvLGfMWtTPhuvpz1Yx4g3pzPD1MS/jBW1qImu5W4TEGsQfpaNzgDRixNPnUALcaU+V8RjTgCzKo9ZdsHnHHV9n8Ad6nHQ6evBOZNv1IqyZPt1mM27xcZawz8U43CYQWdrC6RT8vVIi2hjy1/z8xLfU3GujwBOWYhed0ygyZgt+E+sItkZy+xeF5D6W2B6/3Axl/837tzUpTrDnaty/fvp8e+uTMsUdXEbRoyxs3ZPARjIv/Z6NXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b+pxkYWY89LjURYHXKn7eE5s0eh6YNR6wXbSTl1Oe7w=;
 b=X0h703nwHnMoM0eBryuyo3/4eza/bx5LqJa4y7KyBpC2Z98XnHF1vKuZ2Y/Bwp5W6lU8qcdUV8JCioa8gjoqSoxRMXL3oy4+CT7XOo1+FeY8j2XszuFITAoXp4nNBFGT53o+La8n9N04sBEfPeWG+b7iuflwDFMeSsncRCb5MX0=
Authentication-Results: dabbelt.com; dkim=none (message not signed)
 header.d=none;dabbelt.com; dmarc=none action=none header.from=wdc.com;
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (2603:10b6:5:127::32)
 by DM6PR04MB4539.namprd04.prod.outlook.com (2603:10b6:5:2c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.26; Sat, 16 May
 2020 06:39:27 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.2979.033; Sat, 16 May 2020
 06:39:27 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH 0/4] More improvements for multiple PLICs
Date: Sat, 16 May 2020 12:08:57 +0530
Message-Id: <20200516063901.18365-1-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MAXPR0101CA0002.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:c::12) To DM6PR04MB6201.namprd04.prod.outlook.com
 (2603:10b6:5:127::32)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wdc.com (49.207.60.36) by
 MAXPR0101CA0002.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.20 via Frontend
 Transport; Sat, 16 May 2020 06:39:23 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [49.207.60.36]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 3dac512a-f01b-4207-1b86-08d7f963e137
X-MS-TrafficTypeDiagnostic: DM6PR04MB4539:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB4539BB41E81B381134F1548B8DBA0@DM6PR04MB4539.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 040513D301
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n41V8tiewqW/quOjYp3pBOz+PVxdefTaHpHfl9+JPPCMm4qTyHhwxNOYvAWhzcgTCIrmCopjxwcozKpaWyxmfRMgiIfFTYgVHnzglACAEf6k1DwXFQOfGmNoRQjL0TAfXF1ogoJmnLCXUFdxVfJVQFucKFw8jUklfjquMhECuwJo9zJFPbVsNL4NNkkAycpze/P8jTdcA8RbNr9O2gKZVgZXTeLB/g+Qm3M5Q8FH/cB7iy6PAWzT09pXiyoA+tkKzNndw/WuZsAGFBoDvo/JGfwlMXeE+NuUYmRCEsn66xSwqrZsyiabY/dQaJdy3N3y1imqdsnRvSw/BuBUcJFBfsUS+xk6dg0+C6Y+4Qnfa2xTnfSyhRQ4fSCGQFd+h607tbeKDVzqUtsHv6dGB0Br9VWZlEdr11tU3FZRKX+JljObSYWtF1kMLiFqeoFbqeqVnEPKzDLKxfDjFgJsrej077XtK2P/TOEc6zdpSCJ02wg5K+ZWv8Kxy0PWFRzb8Srs5Bfs3vHVm/dsuU8jHoJLMg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(346002)(376002)(366004)(39860400002)(136003)(6666004)(1006002)(2906002)(8676002)(36756003)(8936002)(966005)(44832011)(26005)(54906003)(86362001)(7696005)(52116002)(55236004)(110136005)(1076003)(16526019)(186003)(316002)(5660300002)(66946007)(8886007)(55016002)(66476007)(66556008)(478600001)(956004)(4326008)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: oddKB7A2/h2WujbuMlBfBWsVWEcEluL94Zo+UNO8Vqu4W6j9G7SS7xlxYXizNw9N9pZptEUvNAsClGD0gFNd1mhLDDEg7SLEQkHWqAslWGyGoOXyJETR1vbMQn/+a1UCjbS62gEMvi5ND9v6XIN4wwM+fZzf4AzMsKyon+U+MtYEGuLR3uMI6fBuv/WHRtgaQG21YYviKO2F8JBO+gTriOgAfW7oHrVM6vHPHUvmHfJUubdfg/50OluM0XDI3BFQA4judtkoITecxLa9kGE4UBJa6AWtvnviNuecbfBje4xLC6H+C8H7Zg9j8s1Ro31hPbi8t846r57du4M4NHAEli8sDwZtKkO3stA+6QBDL04pBNgVZMH9wKHfx/VFNDYB7n22mdNCZYiqJUpehPC1AJPJGwWXvW3xCLwDL5yrav/1sJUd3w8+OG810sAZbyslCfzIdrkS0a6gPBFx51Y6d6BH9G0NlneKhRA82cQ//Ak=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dac512a-f01b-4207-1b86-08d7f963e137
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2020 06:39:27.6555 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aZg1UrKtgAKassh9ZwB/zNdkjYTeArHNW4vHfEvcDaugG0Kw1OqCPP/dXsyO3gBBrFnhon+c+XVKBrcbjdjQvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB4539
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_233930_037898_1887EA79 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anup Patel <anup@brainfault.org>, Anup Patel <anup.patel@wdc.com>,
 linux-kernel@vger.kernel.org, Atish Patra <atish.patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This series does more improvements for supporting multiple PLIC
instances.

PATCH1 and PATCH4 are fixes whereas PATCH2 and PATCH3 help users
distinguish between multiple PLIC instances.

These patches are based up Linux-5.7-rc5 and can be found at
plic_imp_v1 branch at: https://github.com/avpatel/linux.git

To try this patches, we will need:
1. OpenSBI multi-PLIC and multi-CLINT support which can be found in
   multi_plic_clint_v1 branch at:
   https://github.com/avpatel/opensbi.git
2. QEMU RISC-V multi-socket support which can be found in
   riscv_multi_socket_v1 branch at:
   https://github.com/avpatel/qemu.git

Anup Patel (4):
  irqchip/sifive-plic: Setup cpuhp once after current handler is present
  irqchip/sifive-plic: Improve boot prints for multiple PLIC instances
  irqchip/sifive-plic: Separate irq_chip for muiltiple PLIC instances
  irqchip/sifive-plic: Set default irq affinity in plic_irqdomain_map()

 drivers/irqchip/irq-sifive-plic.c | 50 +++++++++++++++++++++----------
 1 file changed, 35 insertions(+), 15 deletions(-)

-- 
2.25.1


