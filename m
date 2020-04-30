Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D17641BF4AC
	for <lists+linux-riscv@lfdr.de>; Thu, 30 Apr 2020 11:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Type:Message-Id:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zO5KEr/c0V47cntzr6VM8XYrvXQmDezAE3ACOoAylNo=; b=o+o
	IGUvPxeIXKzDfA5hPuFaHdYlV++S/hEWuK9JpzRWSD6hYNXOjYb7mPARXG9IxRXFIjGMOyU0qoBfb
	LQGc2v6P7pcj5E/w6/siCJvrbVCEAxkWVmXhQlVgzJMjcjNZp/c272xBFIT7QTAx7gFgKFgfZKqYS
	JRnJkgl0jbgqx5wCpSe7iJDib9O2qv+nW+DzFCFIGeHD8l2taQ/evKTG9F2CiR2uv0rk6zN9WirS2
	Db27o5Wi1wUeUPdYY3Ni+ni9/OzCweh2zQVoUH3F1P3fd8m0bzZbGdTni2Zhv8yUg6fUBWLzB1wbA
	tNrZ/Imf0EV9LuVB6sj3Jz8x3Ylw0Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU5yU-0001KJ-8S; Thu, 30 Apr 2020 09:59:22 +0000
Received: from mail-co1nam11on2053.outbound.protection.outlook.com
 ([40.107.220.53] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU5yR-0001JH-1a; Thu, 30 Apr 2020 09:59:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=modYXQGQcyDQ2xfFapaVudJriEnKSztlssxbG2mRLZA5mNykI843NQZdqqlBbj67Tv+XZKn28up87aU85up0pMHljJQUXCkFdoMDtPS1p3q0G60spZA2JAm602nC9gDr5Z3Y3th3HL0bcN2fh4X3Y8XUHYyHRwAz309XZ4XWlVzOSjbCZNcheEi3mfLLpK/93aaDQQIqhmeLT9mTsUtDMsIVgOz7b4638gyw/A27M+S4Z8zph06fdd98cb96osRuJA2/cARRofO/gFz57nVGn2II+WBHxJY0UdDCkAJPB4MPhG1LpVUK8qPwUnJOrfYGfksraT6vJWePnN646s8AxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zO5KEr/c0V47cntzr6VM8XYrvXQmDezAE3ACOoAylNo=;
 b=WKK2bD1xozB//Iof4LgxtH7Kh3Y41XvByD4S8WwvhpZZSopVeRcts9wivFsK6WRmqAOq6OR6JAW831G6JucKn7nKrGnpucYAZGMlMfoM8WT6aVjTsXXZthlPREAfsRdBXib+HUlMvXFdmKlzUGfWd7ajXaD1otYVtdwWiQMqsJG5W0nMn0Dpw3wAWU+ictVp6NruYz1QY/s1mrPDyMknU3lJ/UqyXmqGiD45T0uA1uMzCVI/q9zAZ6S6lx5LIOLo2rGOjLuGC6QCWWbJJg4SXAs+0xVHCPzdn7izLt/rgw4Rrlih4ezuDlwCRR4GrngfWZ9IuosoEZzV7lupa3JClw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sifive.com; dmarc=pass action=none header.from=sifive.com;
 dkim=pass header.d=sifive.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zO5KEr/c0V47cntzr6VM8XYrvXQmDezAE3ACOoAylNo=;
 b=V94lJhhIYF7dsKLMmVZ/SJx+BN0lN6M1uYMcHKPZpn7YbLh3dCJJHYscOAXsJESgyfjynUEZlVPP3lYs7sCECh7m9vIPLniazJIQ56SL9H2DGbDxr5pIx2bUq0ReWxjsQ24LRdG/WpKU1R2s6/3iudPH9fy/LXs405rDu5di4IU=
Authentication-Results: microchip.com; dkim=none (message not signed)
 header.d=none;microchip.com; dmarc=none action=none header.from=sifive.com;
Received: from BN8PR13MB2611.namprd13.prod.outlook.com (2603:10b6:408:81::17)
 by BN8PR13MB2884.namprd13.prod.outlook.com (2603:10b6:408:85::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.14; Thu, 30 Apr
 2020 09:59:15 +0000
Received: from BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929]) by BN8PR13MB2611.namprd13.prod.outlook.com
 ([fe80::c129:8fca:5ed:8929%6]) with mapi id 15.20.2958.020; Thu, 30 Apr 2020
 09:59:15 +0000
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: tudor.ambarus@microchip.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com
Subject: [PATCH 0/2] update is25wp256d page write capabilities
Date: Thu, 30 Apr 2020 02:58:50 -0700
Message-Id: <1588240732-13905-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 2.7.4
Content-Type: text/plain
X-ClientProxiedBy: BYAPR08CA0027.namprd08.prod.outlook.com
 (2603:10b6:a03:100::40) To BN8PR13MB2611.namprd13.prod.outlook.com
 (2603:10b6:408:81::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from gamma07.internal.sifive.com (64.62.193.194) by
 BYAPR08CA0027.namprd08.prod.outlook.com (2603:10b6:a03:100::40) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2958.20 via Frontend
 Transport; Thu, 30 Apr 2020 09:59:13 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [64.62.193.194]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1f194c6f-10a8-4a0f-10b3-08d7eced2372
X-MS-TrafficTypeDiagnostic: BN8PR13MB2884:
X-LD-Processed: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BN8PR13MB28844AFF04000F500A5F6BF099AA0@BN8PR13MB2884.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0389EDA07F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4MLehkgPkdJOeopcQ5DInrJdPpBpzTm9wqLhZroxLVHda4Xe3cClvQlAAh9+JrrOvWSIVR6R2E7H2X+l1y1iVCXshdJG0E6dEo5LmYISOHTppGezXUcPnavuwovA7HuNGbHOaIg7YPR59Iw3U0fHaFSLUsn8JTJA2pcle3iW23I0Ie4/RNJ4gzbhwyKUV7ATKqT5nB6PLcnoEeygaIY6zEXNuhfeHSpGHpJPourywBUL0nNb1RAmEgmFvcg5PZkOU7hA5mksWHIcpu5NYFY8RmErfQSmPYtglJMZxLQalE37woFys/0P+/9w/E2JiS/ybg0xa2MSrdXJH2SGcNtJHQ5gdjTz/KRrO8NzHiNGTCoxRs11X+PHIbcz2QdM1H0bZd3MnIOWiZw0ZSAhhALUGP83otyhFgdgXhz7UVeN1IJrqX5GaP0icZLm/7RmYKxz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR13MB2611.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(346002)(376002)(39850400004)(396003)(366004)(7696005)(52116002)(8676002)(8936002)(16526019)(186003)(26005)(5660300002)(4744005)(956004)(478600001)(2906002)(2616005)(316002)(6666004)(66476007)(66556008)(66946007)(86362001)(15650500001)(36756003)(107886003)(4326008)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: DHrcdylyOx4qjkqpiFsp8JI4sGtnPjIfZeVf9QSsxAyZaOLM6U3DaA2nRihFvUjNM78RNyIvBqci0ZXMF+JMG0R6idQGeIcMJaxHe0jpIiOx3VJWnLpm8Kqev1HLaRtTshbzJHnoh01tt8WP16SvACPAJHWW0oym08R5J/T0eFEth10mEPAplG8oDlIfmDy+RDA7dfbsDuORvXDt8nJV3OxkZOLyHKYEMPrCnq0TUGGX30ETepqBif2MpRWu+PfWn/lbVO8TinS7eVEGzJ4BHk2eEzo3a+rfoVR9qJL86V8UfKekegNb/Kgpaulzp8wpzIaltC0/5Ri+WJCwKGRHBqgAT17zt2gfZ6ppo7J6z4BDL9XPMJngEwc8b/oHBmCjcppQQ1gIRW6cbjDzcfwYuFoTZyjEQMHsux/KdGuUE2rmU7Hjn2KZwFVmo/UOdejU1yaaMlN66TKZmn53asJrLd8HAsIVe24QmHiMfgV8oh15i+HrPx11/T4cJPofTJKbrNKep/XHEG48YnWPII+mETbjdDiOyhcXnkgffr6PGTutE81hie/lcwMDOLQHII5wz9oF06v9CqZEQoRVORfFDwKYfymwzGdybNb6m0+rrC3H6I6U6F5B3Crp/PMTnhBV5njBlwv8dLEQGWMxuGws86gtjtYeDn9JThnvB2DMaIS0U57PZ9tyjxupD/QKHhIN5c+joRcJHg4RW+XIRbE1ND/DWB9AVA8c2MCNcJxeMD8zsEKPzg9YveFVY7PRMYbL/bjt3jP266z/UZRNPXJs1/uxd12G8stAbivkhjyCBsU=
X-OriginatorOrg: sifive.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f194c6f-10a8-4a0f-10b3-08d7eced2372
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2020 09:59:14.8153 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 22f88e9d-ae0d-4ed9-b984-cdc9be1529f1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +/iHnhN6rfjPAiU4XYNXWuSRwg175f0Z9QaDt7cH2VCLUI1FHSgc0RoNwes5Ll6UC6YzdmhBjqZdKCo0o4ACIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR13MB2884
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_025919_162407_EB0EA88F 
X-CRM114-Status: UNSURE (   4.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.53 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-mtd@lists.infradead.org,
 Sagar Shrikant Kadam <sagar.kadam@sifive.com>, paul.walmsley@sifive.com,
 palmer@dabbelt.com, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

HiFive Unleashed A00 board has is25wp256d snor chip. It is observed
that it gets configured with Serial Input Page program by the end
of spi_nor_scan. Using the post bfpt fixup hook we prioritize the
page program settings to use quad input page program (opcode:0x34)
over serial input page program (opcode: 0x12).

The patchset is tested on Linux 5.7-rc3.

Sagar Shrikant Kadam (2):
  riscv: defconfig: enable spi nor on Hifive Unleashed A00 board.
  spi: nor: update page program settings for is25wp256 using post bfpt
    fixup

 arch/riscv/configs/defconfig |  2 ++
 drivers/mtd/spi-nor/issi.c   | 16 ++++++++++++++++
 2 files changed, 18 insertions(+)

-- 
2.7.4


