Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEFD12958C
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Dec 2019 12:37:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cx6AC9H95UsqJ48sr1L/zKuUin/HxUSMNSiaaLE9zRg=; b=T0J4Jb8eBHSKU/LLeY/J9J2rf
	qv1wXC2barxpuexVuhnx56Js+66mKv5D76MrAPVG35GXFQ7gQ41kG6AM1W2ByaAwFVq0lbjXQZRI2
	eXIoSJwmybgk970wpcYld7lirRymL2rmpsqbpmQnoBK+gzoSmp5NxEsljYFvVBPQu46J//9w0juCI
	n7eoacb8xT/sUBdYVNQpZTr6TRpOscEpymBHej7ZYghHTvE7D44jQlqFz6JfcD73B8PXFrEDmPwPb
	qz8LhGWWouaPVJAWDInysgUSfLXkt023STKf4TFpyD/L07ZLFsBaut4lbnAadEmmkdE58lnEXoOns
	rftx8ZkEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijM25-00021n-GY; Mon, 23 Dec 2019 11:37:53 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijM21-0001qa-GB; Mon, 23 Dec 2019 11:37:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1577101070; x=1608637070;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ulfuHI+us3/RXmEn8pPkvLXPzBZpT3sHgPruv5uBTeQ=;
 b=UOFViViTHQx3/zMh50Eo0yYtZU9LQE/1OANsxWGZPy31l13qS0ITMGhG
 2POwnEIB/RmtrqjTJyVT+P7COQBTxobrTrm7kyShG1J5mdshR1X0A5hZb
 +W4nScYbmpjxvCj8lmEWtKuFAiKGIBqFAB3U5/H+T6pDe++oUytdDjD3T
 rmbiDyDnAv29Ge+ai8ZoOeCq06GLqApbwzDLg0G7NS3hNlyEAr0O2ImBR
 BnUfLn36pB6QQUdUd7DWt27ULNr7G8tLy6sNtqp0aVFkP69WJOEKWEn+m
 xQpZP3XxQhuNrqdpukIEmQFYYac2rLOcmW3RPEbX54X8HE9xkoLax01sx w==;
IronPort-SDR: Qa5QpR0fIcD34P8whEV40LFeUrroYqimH7zCis8PrcZC5Mu5mgi5/pyY9CEpGWu6DqrHZwGbfo
 sKsAwvrMLVKWjW43NCohNwpE6YR1lHzUN5Cy9GKCyPuLb7p0AxCbWg8zEigjNSFDIsc10J4MWl
 Uu3+0d9LQXjW6RJDaj+ukKJ7bMT3So9JI0zclzxMeTwU3DkiRaV53suUgMr+3YOBWib5mT/yER
 i25+CvwNYfWsYYEkz6vPtBl9QBtu1MuEF0CwvmasZnG023mknKPsFXJI9Rl8eY4RsbefLuV7hb
 cvo=
X-IronPort-AV: E=Sophos;i="5.69,347,1571673600"; d="scan'208";a="126720999"
Received: from mail-mw2nam12lp2042.outbound.protection.outlook.com (HELO
 NAM12-MW2-obe.outbound.protection.outlook.com) ([104.47.66.42])
 by ob1.hgst.iphmx.com with ESMTP; 23 Dec 2019 19:37:49 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kxq3X6nWgeqg4KWQzhPG3oqh1Oc7D4BhPrT/jgs8XKzszmSXrURCfWICfFIAEFkioD3yibQEsHp1C0kbdXNfG+U+S02HFExzodd6maxJ11DWQ+ZbwLUB4B2WfDHH2bbZ/mmdHaWpmg6DJFrpCaxlLEDmaatRueM+2769uZQfFsrWR0LTgK72PRBt92JCQ6zXpzD20FgBEE7+Ovr3K0pfrFL7D0LdEETDDTK8LBhLPL/QYm507wuB3oKPhtYAMSbFAwhCZnS0WElOblf6sp27AnelcCQERUrEZBbrQRZSXMmoWdwuZbYsb0vpg/dhn97PkpBTK1iypbtNtSQuRrZHeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cx6AC9H95UsqJ48sr1L/zKuUin/HxUSMNSiaaLE9zRg=;
 b=F2VMOfMm2OBI5tm2I8Mf5h8kbhdvaZRbSgnytObP5wWtt1Rc5NyieAtZMPMj55fsmL8ngCt7ngKgROWt3xfFZpbKbPkLXq8KuuTH+MkupsgV9NEj205wmL10QpTsPUSYkQdyFkO/L7ZBStqXFF2QMuIQT7BQ1QIVZn2rtA6VIGjBPsd6SUQZ+hJ0bMN1MXQkNqM6oXP9U+gJ5i0pRlfIyBk/ZfWOia690CM258tz+tEQCfZOLdq+Z4mfL0QhTzDg+bbgntfiCJQj/e+naTq/yR/3N6Eb3esW9fAFq2FD+V/0gaaW/p7/Mf8kQVoUTk5XTaKW36sASCoPzXFJoOg+xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cx6AC9H95UsqJ48sr1L/zKuUin/HxUSMNSiaaLE9zRg=;
 b=Jai4+mV9QBbFQYpO2B7Pc8tDLzYM/pjOl1odt7FDs2CHNyGSGD8DIl5Lq+4+1y6iZFbNWVuKsNGw+J6B8izP2wzB3EtQQUvR4JQmYXyufhKX0oBziu8qgSEP2pyedTcdv6nsNclSPPDJ2CdHsDoomZPHPlvlPcWy/7XKuE1TCDM=
Received: from MN2PR04MB6061.namprd04.prod.outlook.com (20.178.246.15) by
 MN2PR04MB6480.namprd04.prod.outlook.com (52.132.171.74) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.15; Mon, 23 Dec 2019 11:37:47 +0000
Received: from MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89]) by MN2PR04MB6061.namprd04.prod.outlook.com
 ([fe80::a9a0:3ffa:371f:ad89%7]) with mapi id 15.20.2559.017; Mon, 23 Dec 2019
 11:37:47 +0000
Received: from wdc.com (106.51.20.238) by
 MA1PR01CA0077.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=) via Frontend Transport;
 Mon, 23 Dec 2019 11:37:40 +0000
From: Anup Patel <Anup.Patel@wdc.com>
To: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>, Paolo Bonzini
 <pbonzini@redhat.com>, Radim K <rkrcmar@redhat.com>
Subject: [PATCH v10 19/19] RISC-V: KVM: Add MAINTAINERS entry
Thread-Topic: [PATCH v10 19/19] RISC-V: KVM: Add MAINTAINERS entry
Thread-Index: AQHVuYVmgNFSQeLEyUGvujPPmeD8Lw==
Date: Mon, 23 Dec 2019 11:37:47 +0000
Message-ID: <20191223113443.68969-20-anup.patel@wdc.com>
References: <20191223113443.68969-1-anup.patel@wdc.com>
In-Reply-To: <20191223113443.68969-1-anup.patel@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR01CA0077.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00::17)
 To MN2PR04MB6061.namprd04.prod.outlook.com
 (2603:10b6:208:d8::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Anup.Patel@wdc.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [106.51.20.238]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9d4e117b-d714-4603-88c4-08d7879c883a
x-ms-traffictypediagnostic: MN2PR04MB6480:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR04MB64807289A54B8DD55B2695678D2E0@MN2PR04MB6480.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:1303;
x-forefront-prvs: 0260457E99
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(396003)(136003)(39860400002)(346002)(376002)(199004)(189003)(36756003)(2616005)(956004)(478600001)(44832011)(2906002)(55016002)(7416002)(52116002)(7696005)(66446008)(66556008)(64756008)(66476007)(4326008)(1006002)(66946007)(8936002)(26005)(1076003)(54906003)(110136005)(186003)(8676002)(71200400001)(81166006)(81156014)(55236004)(86362001)(16526019)(8886007)(5660300002)(316002)(4744005)(32040200004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6480;
 H:MN2PR04MB6061.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0M3/wpP5M70vA34Dc85bQYdcQRvCP5BDMrCltXxVup+B35ePj7tc/8ktND2M/dRpN+lqJ5gpzQeBQDaHJHbp62gt9nUm8rnOtly/FH12r/KpV1qrhSYn8Z0h1Td+lA77lI3aY+yo8mOzVVpDxGx/Kgqn4P9C36jpzH2gBCn117lsXrNJ8YHAVR254Xe5UgeE3agBdf/6ZlazHw8j4WiQ2ku1FpINfIH7583xiPgNPEBPH0ZZneao9kiS8aw2uYKxFZ303BF6wqR6h2DJShmtISEw3qdQ+pyovPUhEjXKgE+XTXL+AQs1n1nlGx2V1NInTuCs7jOAFMzffu8CWWgxD+XZWiPg1MsXr2bL8BV4mkaGF0g3iXXTWl7NJdtV7I4eRFM5zH9pkis7zVYOVwN+VvB8OWQ3FRI4v5q4FNZrZeKL6TKz2WmbSYDfJ3glSU7zBThpStu8MVq5LlDneR0rykoDMeGNgt89zYHQ6KsWKmRpbhaBD9IvfDhCJpn8jVnT
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d4e117b-d714-4603-88c4-08d7879c883a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Dec 2019 11:37:47.3486 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N/Iqj4eeNl9xMFf4W62sRGrwGowAJg3j80mtxK5YK8zFNE6ceKxuDVDGHeoH9FFh9z/j6CLILmHhDd9HFpYZBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6480
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_033749_549522_05F6C565 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Anup Patel <anup@brainfault.org>,
 Anup Patel <Anup.Patel@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>, Alistair Francis <Alistair.Francis@wdc.com>,
 "kvm-riscv@lists.infradead.org" <kvm-riscv@lists.infradead.org>,
 Alexander Graf <graf@amazon.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add myself as maintainer for KVM RISC-V and Atish as designated reviewer.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Anup Patel <anup.patel@wdc.com>
Acked-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Paolo Bonzini <pbonzini@redhat.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
---
 MAINTAINERS | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index ffa3371bc750..c94a5195b919 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9093,6 +9093,17 @@ F:	arch/powerpc/include/asm/kvm*
 F:	arch/powerpc/kvm/
 F:	arch/powerpc/kernel/kvm*
=20
+KERNEL VIRTUAL MACHINE FOR RISC-V (KVM/riscv)
+M:	Anup Patel <anup.patel@wdc.com>
+R:	Atish Patra <atish.patra@wdc.com>
+L:	kvm@vger.kernel.org
+L:	kvm-riscv@lists.infradead.org
+T:	git git://github.com/kvm-riscv/linux.git
+S:	Maintained
+F:	arch/riscv/include/uapi/asm/kvm*
+F:	arch/riscv/include/asm/kvm*
+F:	arch/riscv/kvm/
+
 KERNEL VIRTUAL MACHINE for s390 (KVM/s390)
 M:	Christian Borntraeger <borntraeger@de.ibm.com>
 M:	Janosch Frank <frankja@linux.ibm.com>
--=20
2.17.1


