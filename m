Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F165A1B6CF4
	for <lists+linux-riscv@lfdr.de>; Fri, 24 Apr 2020 07:00:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MmpUk/iHmXL2NaITJWMDkQWf4xmblBLnoU2PM3OklQ8=; b=X4E/G4yUXf9JofUxILpomDW/MK
	9WObKMWp9YI/tDa71w5Zl0MwPJ9hIyqoTxCVBjvTc9CtHVFqVsFCFw/bX6aGENaZ5hpKssXw2II9+
	xVjB3hc4J2FHX3rwIT/gzd8rXhxl4buSpiqNFkpzcdddvCREpMVVvN2AQROQbehZotlemjIWGw7o6
	t1GG8J0XhilT3cxsve2Cb/lLiIJ8aWisp2wthfGyLew2ebED4MJWUcdRUyy3C69V4Ea9ff4K1QHBl
	k731XcObcby59Z8sHnncKIke9A9qE4aD7I0P5h5eYedVM9sBpSQ3InLchGyySEdxulLTrK1YA2SY1
	3fopn0sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRqRp-0008EC-Bv; Fri, 24 Apr 2020 05:00:21 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRqRi-0008C2-2n; Fri, 24 Apr 2020 05:00:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587704414; x=1619240414;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=3RFL5fk8ktjSeopG8h0D42A38ZN6X8PbrTCsrXCK1WU=;
 b=ocdVOzdXsqEyYbUsFRt9/mve6cf9RWYW/I/9BqEYM+dn9S59+m6Wy+Aj
 1iKYbm3aq21ln7Ff4KJWsxIMS9cRLz+9LeeO9IwId4+bZ3xWlnmXOVS7P
 0bsayC2WH/0FYI6BpAf1EdDqY1yO6oJgzr5tEMzBk894BLFwmfzZGcqyj
 QCrDevTI8UyfwEBMHwtFtraYfmmWexIW/Jwr9P6iwKO2vwGPB7+ESmgit
 sAoCN83Yt31zzwIXYAlXBqyjFEM5uQ+eGKfRvazwq9Hu4si7zNVzCSBKX
 QZaAc4Eka7OmKGwTinEg9ucycloe2/+8qEdk9MsgHp5FsRTwgT8C44Ptf g==;
IronPort-SDR: M89i/vv+1ikN4QeDNUnviHuIGjQz1cU6WJVw8dWEg+I5o6OERXs5te56WgXn72DU2ZmO8hgcbL
 em3H3LGw5VBNP4UbB+EIXHgCccydP8N4RV4m3khGp3v70VaPBYzz94tiOOTXG3W3h04mSanL8z
 mOsM/s7Ysj1i13Lzb9rFYkRfjnDFGzxEvt7iZi42y0MTchGSpnGNf0TObJX8gG98Unpk+U0KBK
 9DxELnqjGJnUb104qVr2vuiB59DUqE1wxHBY92XvQ0D6ZdjpDJt5PXFPkpZtDEbjNTpRYFQVCH
 im0=
X-IronPort-AV: E=Sophos;i="5.73,310,1583164800"; d="scan'208";a="136354210"
Received: from mail-co1nam11lp2174.outbound.protection.outlook.com (HELO
 NAM11-CO1-obe.outbound.protection.outlook.com) ([104.47.56.174])
 by ob1.hgst.iphmx.com with ESMTP; 24 Apr 2020 13:00:13 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XnHIBFyxSRdL72GGgY6+gfta/vV9yq/sZV2aawGsgrfUTQ1G850IHWVEyrPoIiiwb+FQf5VyjOA3ZjVvzPT9HU5tFiHDdul3boYSLxtATyXdQyZkEGTy3wAskoiFOKxnjXZFBstxduKSW74girdwxH/0RXqBV/wxrpXGgA+DvfaVXBmeRFW2OnTHJ42GbwJESlx1WBD0HT9uT0XS2Y5YNzq72LMlh26PhccKBDDXf601gHpuNskjWyYBVzG9nBnZm3/y2A/nnmh5j0NezMysVArTTgU/4OfFtLfG/rlC9l3qhuugHuung0FiajfDnJA/0j406+iqFahnYqu/rr/kAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MmpUk/iHmXL2NaITJWMDkQWf4xmblBLnoU2PM3OklQ8=;
 b=GHQiu+k4bLeBTnQyM/8yYkywOMf5EWw/j6QU+a0edcezxvSZRYTElolbmWVW2IpG5jaxbkX1vVdgnoLlXIEmUiUgGTj2zXCL/b1w6jBqr2e16F751SzhOoufMtexq9G3Ye99ryvZu/1gZPbFjYz/zUdwpKuwtN3GiNLnyP49JyNGDFw2FVjIqdsAlPtulY/c9lgzyKuBYpDoW1XTWbAnUgJkWIk+iENCHTZoLiTG57EqHufsQJALMUpKD98/y/G8wg0IMpenR0d/vUOinofRhnPUUX02jFX9SpD88+LhjMwfdShNV5gLLPxIkEMmkuuiy4ilUYxc52DTu+sEUC5hqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MmpUk/iHmXL2NaITJWMDkQWf4xmblBLnoU2PM3OklQ8=;
 b=vyB01TCv2z9PY3qeXhdVaZecrUaUTBoWHU9DV8U0yZlptI0GQ2o4VfYAyttZKF7mV/HtjrPKNGRFYxerHR+dtu6bs5whfvLj4/SaVxKJ1gPQl1T+Hp76Jjkfqc3H8tfPLHlyHh8BqDXOw5U8l0l2+r8qyXdI8RS2R9aIChSxpUs=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
Received: from DM6PR04MB6201.namprd04.prod.outlook.com (20.178.225.224) by
 DM6PR04MB5467.namprd04.prod.outlook.com (20.178.25.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.13; Fri, 24 Apr 2020 05:00:11 +0000
Received: from DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0]) by DM6PR04MB6201.namprd04.prod.outlook.com
 ([fe80::f8b3:c124:482b:52e0%5]) with mapi id 15.20.2921.030; Fri, 24 Apr 2020
 05:00:10 +0000
From: Anup Patel <anup.patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH 0/3] RISC-V KVM preparation
Date: Fri, 24 Apr 2020 10:29:25 +0530
Message-Id: <20200424045928.79324-1-anup.patel@wdc.com>
X-Mailer: git-send-email 2.25.1
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
 15.20.2937.13 via Frontend Transport; Fri, 24 Apr 2020 05:00:04 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [49.207.59.136]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f8e8f040-1375-42a8-9ea1-08d7e80c5d51
X-MS-TrafficTypeDiagnostic: DM6PR04MB5467:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR04MB54679EE28AEB5B3C0EB182068DD00@DM6PR04MB5467.namprd04.prod.outlook.com>
WDCIPOUTBOUND: EOP-TRUE
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 03838E948C
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR04MB6201.namprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(366004)(39860400002)(136003)(346002)(376002)(54906003)(110136005)(55016002)(52116002)(7696005)(16526019)(8936002)(5660300002)(7416002)(4326008)(2906002)(8886007)(6666004)(81156014)(478600001)(1006002)(186003)(316002)(1076003)(55236004)(36756003)(4744005)(44832011)(8676002)(2616005)(26005)(956004)(66556008)(66476007)(86362001)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wMUHww/1zaXgttl+BrdgHbT9VXw249QEYJOL/3cSxCCPKP0xfTvja7OU9xX/Wagiisk2s9lL37cH6PtUhBZw2Exg6e4QIdeEfYX2x6KCA9E+pautszrfxVm3n2MOrpICdVLxBAZapSTJoqh1ca2DcmiMjzsqCXH+JN0rp4Gkhf6I7wcYqn5qODlbtHXHr7nz4c1WEYq4nr3fP46vp4PdfuKf1n0feondeFfYNxZ8SztHM0PReIbXi3dUTEcx6m2afnuwEsuaIuJCWN3bDazn7WY6j6hCJGJwwA12H71zKjVPyRbIgBdre5c+7EPiv0w4YavvNUEbY2oiCPWmK5V678sq8DLqAAYsu+vKKJah4bf1ErLexc/mH83TeuFAaG/A2qWmqRkUk5+RHkLGwj92jHNlYTy2Lt2Kubp8hzK35vpvcQagU2Com4yiFBHwcjO2
X-MS-Exchange-AntiSpam-MessageData: 50sEN5dpNldzM+Rp9BI6K1XXOz5sxQhlIqeHXgZwKtddCm12BKq1HQA9S67VgW3dhUVBPsHH3JL7cYUqoN+rUPCPoDy0wT2+PLFuJOtKRLfv2TWUv/uCYeTrllkkkUw2Hbf5txGmVnOgE227Y9YAZQ==
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8e8f040-1375-42a8-9ea1-08d7e80c5d51
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 05:00:10.3063 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K9YvWzndkEXMPKxApLWUkTIkdnaQJsdarxr/gc+9I9+VOV4wJwPaa0zPgA/a5bvOKw4HGtLe+4a+7YxukhZm0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB5467
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_220014_166151_56AC19DE 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
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

This patch series is factored-out from the KVM RISC-V v11 series and is
based upon Linux-5.7-rc2.

These patches are mostly preparatory changes in Linux RISC-V kernel which
we require for KVM RISC-V implementation. Also, most of these patches are
already reviewed as part of original KVM RISC-V series.

Anup Patel (3):
  RISC-V: Export riscv_cpuid_to_hartid_mask() API
  RISC-V: Add bitmap reprensenting ISA features common across CPUs
  RISC-V: Remove N-extension related defines

 arch/riscv/include/asm/csr.h   |  3 --
 arch/riscv/include/asm/hwcap.h | 22 +++++++++
 arch/riscv/kernel/cpufeature.c | 83 ++++++++++++++++++++++++++++++++--
 arch/riscv/kernel/smp.c        |  2 +
 4 files changed, 104 insertions(+), 6 deletions(-)

-- 
2.25.1


