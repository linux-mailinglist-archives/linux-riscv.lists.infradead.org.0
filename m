Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2FD15B967
	for <lists+linux-riscv@lfdr.de>; Thu, 13 Feb 2020 07:12:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-ID:Content-Type:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wKqVYk8odgjV0e8xxsUuSsKluBVdCztNJOC1bIrfoQg=; b=os6WLuMRcQ3KwhZhElx5nw/47P
	8qGQiXT8dJ3vNNeghnjMt3X0FlTHfWM7SemdDH+pd2kzLzvRO61lM4uvz388QQvEGylT5vArXiB/c
	nGAiYbU1FjZCC7TjjZk8s/FjNRamVMp742aa+gbY8S+KjjdDZxcRy+PZiI++o8E6QGAWqqBPHRzPT
	T+vKhwfoUvsaWCgVCrG0Gcc7N7uPzcc23BEoOP/BZqBxrr9m7trAQWo6YblqVbkrjyxdGhtw2NZOE
	ePE3nPiUdL+DU6lyziUizLfKENHC3W3Uck30IkZUe2uaxy6+i4GFn/sfQSkFQ6C273Mx475z19R/l
	WDS1k0AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j27jG-0006pn-1R; Thu, 13 Feb 2020 06:12:02 +0000
Received: from mail-eopbgr1390040.outbound.protection.outlook.com
 ([40.107.139.40] helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j27jD-0006nY-01
 for linux-riscv@lists.infradead.org; Thu, 13 Feb 2020 06:12:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gRFbukIsXvFXDo+Szh8PW8B5ElFEnGbISa3CfTdZr4g16jsCwyE52Oc6l86zs8/3uskVqANT75I1m2hMJk9c809FLfFIZb/P8QtbNNEUdKAWYNxRTGMMrx8FkClRnwtwX/RU+sDCI1faP3HkWaxVaccCk2iA4cy6aDgMnOW13lcf1OAj5vLjyBXsx8e8ntxDnFPeKzEMvBSieQU3AhtujZi97CPO45TPN6LR9dUlnf1uXCg2p7tyr1EGaMlCpAe0KDsu2dRDfoZcbD1FkJnq80MUl3jKGCbzOw7BS6YkM8S/ZJnqsAyjZSzUWmPuuIuMrxROGAA6S4ZoUZvaWUWSOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wKqVYk8odgjV0e8xxsUuSsKluBVdCztNJOC1bIrfoQg=;
 b=em81rDKhlVXFMRK77PwP/TB2BBEn7ArQNThm/tprlL766tk0q3XTG0qWzPw8hIblVI4xKW/BuWt7bPKme8FTMliEnUPz/my21lskhahqeY1zHPc0/jQ6qHkM0WZgP/qk8c+DWU4PRNZHipPlOrwQ5KNu8jClsg9Iz364J5Iu3wwQtDf7Cp4UzEkYEAdB23tAvAgUmOknoUnqZYehaoU5m33lspSaO6XIoGZaNUKb1vj2etOvNgiJal+zXn0rtLeA8jEPorL47q9pCJiG+cwCFYcm7NOjgRVSm/zxOtj3SctEVDTAucNPMV+htg+IzwzARbtJCYW8G/vTcs90DiSEGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=globaldigitaledata.com; dmarc=pass action=none
 header.from=globaldigitaledata.com; dkim=pass
 header.d=globaldigitaledata.com; arc=none
Received: from MAXPR01MB3840.INDPRD01.PROD.OUTLOOK.COM (10.255.152.203) by
 MAXPR01MB2830.INDPRD01.PROD.OUTLOOK.COM (52.134.154.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2729.24; Thu, 13 Feb 2020 06:11:52 +0000
Received: from MAXPR01MB3840.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::3867:ab13:b198:5b44]) by MAXPR01MB3840.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::3867:ab13:b198:5b44%4]) with mapi id 15.20.2729.021; Thu, 13 Feb 2020
 06:11:52 +0000
Received: from dellPC (106.51.22.96) by
 MAXPR01CA0090.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:49::32) with Microsoft
 SMTP Server (version=TLS1_0, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA) id
 15.20.2729.25 via Frontend Transport; Thu, 13 Feb 2020 06:11:52 +0000
From: alexandria steven <alexandria.steven@globaldigitaledata.com>
To: "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Subject: Germany Embedded World 2020
Thread-Topic: Germany Embedded World 2020
Thread-Index: AdXiNHswK9hcEe7rQ0G0V8g22v157w==
Date: Thu, 13 Feb 2020 06:11:52 +0000
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAAEA83XhMaSlApaQEEfqsiSHCgAAAEAAAAJlKnFUTJ91Auwp4HNbIylYBAAAAAA==@globaldigitaledata.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MAXPR01CA0090.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:49::32) To MAXPR01MB3840.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:6e::11)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=alexandria.steven@globaldigitaledata.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: Microsoft Outlook 15.0
x-originating-ip: [106.51.22.96]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f38e71aa-ac80-4df5-fe27-08d7b04b9e86
x-ms-traffictypediagnostic: MAXPR01MB2830:
x-microsoft-antispam-prvs: <MAXPR01MB28307A9FC5DDD94977C9B915811A0@MAXPR01MB2830.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 031257FE13
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(396003)(136003)(34096005)(346002)(39840400004)(448600002)(199004)(189003)(38610400001)(586005)(86362001)(6486002)(6496006)(71200400001)(5660300002)(1006002)(36756003)(52116002)(7116003)(8676002)(66446008)(26005)(16526019)(81166006)(186003)(81156014)(2906002)(64756008)(66556008)(66476007)(956004)(55236004)(66946007)(8936002)(6916009)(2616005)(102460200005)(32040200004)(130950200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MAXPR01MB2830;
 H:MAXPR01MB3840.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: globaldigitaledata.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lmfs87iDj0bZie7oL+2axE7P29Q7/Ybli5JLSa8lofpHKiHZcVg0OUPCAA2fnz6RDxk2uWEiPPyG6aXvkxzxgVtDRItYjEftiB5zRcNkVY9pzMJW9N0ghCKi3GiPwuMibs56exPbJatjv6yorEYmFnNA/BR5FRHUoTu/gdGe41LR877M/cJjiuf9ISbpoJWcVms/nC396z4kOGN8kzH+Fxx6HUhcP5qhxv6LBpceA72gXubYc+3oKdHbSJFFxYUgfI9cFHeeJup1nRILX+6eI1I74tt5Ts2I9eFFtT3R5MD34kGYzf8hsLqjTDKnSBvxxoxIlXplaNBBYodgrKXRELS95n7dwE1MSYlAJ4jezv6gZRAP9fnEaV/Sr/OGDrsndt1/lXrZ1oQu++EreQFqsB6Y0sBQh+ogdoGvM21pWhQY+53nmvgHUz/23AZmzjK3PE8bHMIU5w4RvrKKwLKcibm7eVjS4mqovOusXv+P6ASKpkUQuRHAosOObBsN/zfNpIqAbBox06nHunWDU3mGbIne/pkyW5yWTGehjoR/faXshQC6z6Udd4pG4WBXzKnC
x-ms-exchange-antispam-messagedata: 3TvRsYvL3Sx2t2glq5iso33fBiCzsU6He+ACP5MKGbN9mL1jNqqDsuWBRQPAHGOsvr9NQTCZYNt+ihQpVjIGxjbFQFWI0CFaMN49RLCzx7CiRK0iDPeCmx3puURO6YcHZ7qEV0OOMDupRIME/yIW1g==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-ID: <AFF80DDF0287F4478D28B1BDC64A4E75@INDPRD01.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: globaldigitaledata.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f38e71aa-ac80-4df5-fe27-08d7b04b9e86
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Feb 2020 06:11:52.5826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 57130b72-1145-4ef5-bf39-0ae60d372e72
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7tKfihiclyz23ClbG9UvIxeQXONLJnZ3TA+P2hGi52hPi7WyKUyKEJxc4kEsNhrSfpNPq6agkLNY4dt9H+aN9mlDQ+L38x5RGmZxDDksfG+tEVRGrbnxZgHwJ/DOnnnKpFv9OQhga1Puri+9gQw/Bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB2830
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_221159_044281_1136BA5C 
X-CRM114-Status: UNSURE (   2.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.139.40 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [106.51.22.96 listed in dnsbl.sorbs.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 FROM_FMBLA_NEWDOM14    From domain was registered in last 7-14 days
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello,

It is a pleasure to be in touch with you.

We came across that you are exhibiting at Embedded World 2020 (Internationa=
l
Trade Show for Electronic Systems, Embedded Technology, Embedded Systems,
E-mobility and Distributed Intelligence 2020 ) and was curious to know if
you would be Interested in purchasing the Attendee List for your business
needs.

Venue:  Nuremberg, Germany
We have recently updated records of past/current Attendee Companies who are
participating in this event.=20

Information Provided: Company name, URL, Contact name, Job title, Business
contact, fax number, physical address, Company size, Email address etc..!
Our list is the best source for awareness and can be used for Booth Invites=
-
Product launch - Brand awareness - increase in revenue etc..!=20
Look forward to work with you soon!

Kindly confirm and let me know if I can share Proposal for your approval.
Also, if there is any interest in buying B2B data for your Campaigns, we ca=
n
drive in records according to your request.

Kind Regards,=20
Alexandria Steven
B2B Tradeshow Specialist
=09
If you don't want to hear again the mail regard CMPX 2020 kindly replay bac=
k
to us for "Opt-Out"


