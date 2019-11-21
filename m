Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8A0105A2E
	for <lists+linux-riscv@lfdr.de>; Thu, 21 Nov 2019 20:07:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3BmT0XgDZ8YDX1cJi+GqV+GGoPPf0O/NUXvS4ftA9kY=; b=WO3sbUTkMyyINm
	46JC6YHvxIGrELKJXdgWL4uj9AywUyR7Cvi7Q0/Z9Lxkha7MlvxtazXx5FHO643sKWD9KZt3O6EeY
	z+6urlrgur/D0DxA+82qtUjuuReLbirRW5vpBYQfyB0ZyWsMnjHgEFm0P8vXe1hJdUewXotd6/rqY
	uN0ewHPBjRxqVgAm2zhj/7BbQ2/+OOrryy3/Fgn6KVLI41l7BM8lqDDZ3uR6lOTaU4KK6qCm+zv7l
	ShAbUuahHpa7ulQy8oZJL/55S4LVcXcVWujNoZvKGcVPGc4Zn+TRnCCqirov+Ao3jRxHkpKNHGD3l
	I+IC6G4wfnNTG7akH9rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXrnr-000859-OQ; Thu, 21 Nov 2019 19:07:43 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXrno-00084G-1j
 for linux-riscv@lists.infradead.org; Thu, 21 Nov 2019 19:07:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1574363260; x=1605899260;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=dR4swahfibxUo9etnfokYP1A7shRi89ll8+RdnKt0Vg=;
 b=mSVPJFvwlGPdHQy2b7xQTm577bkI+Jz9zmBhjYzCIsvkO0Gss8JGqqN1
 zp5xOucTs4gfo2sBrIoHWp8485dz1Midy7dHnQKhmoytzeyDbuKT0ovnt
 0lw9AUBOXZwEOqaL1o0Wy/+zoevrunaaU8E2SBTR/xEZfhBsH9hLlyyfW
 O4Z88maYwobR9z6rl0ztv+DfTt0mNZGmfkGKFgjCp6Pyz4Hsy9rTHXfAG
 0avOtMoVHx5bIWJd2Z1R8igq0yiAGdLg9qW/XT+Pb93gS1yqv3lDsRQZ4
 dcC1CK7AK9crLAX2Yvrt+bnNuz1072p8mfnYV9HpdO3Z6z1Ef4K6SkrX+ g==;
IronPort-SDR: iPlrynLqIJoNNbKRnQO5OoRogt2IVeIsH62xjhTLEgQ+haI2QneUm5P4+OZ+NV4J3qjzrl7G4O
 91X1h9JD8hjNXskrm57OLPxwuJ295nEnqNmBeRTuOVx193kkk5sH6rg2KypMRHZirjj2V8AfA7
 TkVePc48lxe17IxijWczBryaMU0N7RGrPE/0GMZirpB4yc+d4GHDg61wL7tPrKvyIoPufIdlUW
 7Yv5osIxR4nxnCfK9ENlvq3ulzwXyA6IZ0F7GmS/4YPHPWui4PMMYm/CUW9XfxOSxshKFQlZfS
 0YQ=
X-IronPort-AV: E=Sophos;i="5.69,226,1571673600"; d="scan'208";a="123668466"
Received: from mail-co1nam05lp2058.outbound.protection.outlook.com (HELO
 NAM05-CO1-obe.outbound.protection.outlook.com) ([104.47.48.58])
 by ob1.hgst.iphmx.com with ESMTP; 22 Nov 2019 03:07:21 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bGJMF3Xx4UmtppEhUFRDY5rK9GRL0HWNfGf/o9H9LgzjgRiMcdZPkUZq/mGYeCfG9JtsCkLgjXQQsZvjw8yZAPAsqju6DF+WC8HkipjGU4swYAtOObDsiNzpB4aYBZHMD05wtV65LmZE0ajJNDg+xIATXv+6hJ6g3y9EnWPI+ny4RO3/vt+LskwVbPlF3ERSpFIL98lGze9jKUgSPH+Ohhl4RopvUVQtqJfKi8d4GZrz4FoDBLYAn/mC5bd2qj8flfAkKr5ReqbHA7MnVEx0ZLBxC2E9RDlPQaZl/HBRIRs2qvnUAjw9c98cIBs7RiHXKbtm3bX6JCOoOPf65oTpxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dR4swahfibxUo9etnfokYP1A7shRi89ll8+RdnKt0Vg=;
 b=XtDaQ6PNxwSFmeTfJdcWT5DeBQezO3oz1ElNFbhiFRrIm7Vjax9lMEqGsACjR9/LVj2P0Rankr/kmJ518P2RIFrIVKkbK9myz2DC0OkmQVw8uJjV88luIOD1Lsa8PDggQ7S2CB6utLYLaY3ZWQTn3LzXeX24Vdvh8ZYEb0vehH3qYCEXokgZtSgnbtLTQ0P8nWGMLACK+4GkV0NZ4D4qQp/OHHrn8Xtcy82Pk+5GuCRKPneHhZNZFl5CX3Fy4D6sHszR2rGcNK5wt1JSdqWlCvLoqESoZyVlqFpVKcxAnQnbe7XAwkej/nXICVtZqWFKfAwFLRYWBuVVIM912dxfPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dR4swahfibxUo9etnfokYP1A7shRi89ll8+RdnKt0Vg=;
 b=iqSthETm38IG2ZrWtcSW0Kdu2Th67n0yeQa5UqWO7jwEsh7uY02dWs91nIAMIpqAsWkilSk0AaYZ0rJeNLwSbpuJJs5G5epI84E1ZDYtVQm0qY/W/+jKf/FPEb8sJw37BvVQt1GlG5bzoPggqOiJ+VhI1e9laXyebpl1nDP1UcE=
Received: from BYAPR04MB3990.namprd04.prod.outlook.com (52.135.215.29) by
 BYAPR04MB4023.namprd04.prod.outlook.com (52.135.215.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.16; Thu, 21 Nov 2019 19:07:20 +0000
Received: from BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7]) by BYAPR04MB3990.namprd04.prod.outlook.com
 ([fe80::1d22:29b6:df03:86f7%3]) with mapi id 15.20.2451.031; Thu, 21 Nov 2019
 19:07:20 +0000
From: Atish Patra <Atish.Patra@wdc.com>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>
Subject: Re: [PATCH v3 0/4] Add support for SBI v0.2
Thread-Topic: [PATCH v3 0/4] Add support for SBI v0.2
Thread-Index: AQHVnmOBiprL/mb7AEaxYBu8wWT9EqeTsfsAgAJPCIA=
Date: Thu, 21 Nov 2019 19:07:20 +0000
Message-ID: <ede95b25bb1e27ccfd1380896b5b8ec055184f2c.camel@wdc.com>
References: <20191118224539.2171-1-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1911192344560.12489@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1911192344560.12489@viisi.sifive.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Atish.Patra@wdc.com; 
x-originating-ip: [199.255.44.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 58576670-8bac-4175-41b2-08d76eb608d5
x-ms-traffictypediagnostic: BYAPR04MB4023:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BYAPR04MB4023D2E375A8F6AB5D3281BEFA4E0@BYAPR04MB4023.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0228DDDDD7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(346002)(396003)(39860400002)(366004)(376002)(199004)(189003)(55674003)(71190400001)(2906002)(6506007)(102836004)(14454004)(229853002)(6436002)(316002)(6486002)(25786009)(6246003)(8676002)(6306002)(6512007)(256004)(8936002)(66066001)(6916009)(81166006)(478600001)(3846002)(81156014)(6116002)(54906003)(36756003)(305945005)(118296001)(5660300002)(5640700003)(966005)(7736002)(2351001)(7416002)(99286004)(26005)(2501003)(76176011)(66446008)(64756008)(86362001)(66556008)(76116006)(66476007)(66946007)(11346002)(446003)(71200400001)(4001150100001)(186003)(4326008)(2616005);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR04MB4023;
 H:BYAPR04MB3990.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PyUkOUMp1m7T7PxSK6jyPdrwFBVURTsNqR8hWoc84PIKpUYGRorscgskkkuCqJ3xA5/StI87BHjiRr5yy99tbjLWnKY7SmIl5M5yh3WR6VOHdJ5HsmK0PzobiSZeFxFTmtREMT+xly6eh8gQ+NpGNJhitxo8Q42jh/lv0/5auq9d1aGzDJ/x0AUwmDdZ5znh9d1tneRDFxP//CaAluMfen8PCWI4JCA9T/wPvUnArZgC2YFUC9VCV3i3rKBM9pfbF9HpylWm/duLGfKu8iveU9l9GcXchWqeiEZOiG63HbK26aew7bP/KSCA3s4dSAQPUG05+18UoC+45Ei0GzYbPJWke8v2XOy2fnAtMt6JtSB/LAsQZtZw50ADSfx2rFrwxLqg2OyMCbFm7wFI2SJjivsxDOzzvyiL0UpVbn/ArMNoDfyWcGR5Fu3EpBmzR0lsZjOhnWzmK89sM3fFbXPVeDon6v+6m+n4au+GIJdaUdE=
x-ms-exchange-transport-forked: True
Content-ID: <4742D8E3FCBEC64590BF849E83009054@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58576670-8bac-4175-41b2-08d76eb608d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2019 19:07:20.6721 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DEyitYKhCqi6jgQ6LbnBdkGfaOBZSrnMupZFyv8bSGE7G8stYu9bn4rOr45ILnineHoph+8XRtNVl7kFuxxqJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR04MB4023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_110740_181769_7B891517 
X-CRM114-Status: GOOD (  21.35  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
 "anup@brainfault.org" <anup@brainfault.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rppt@linux.ibm.com" <rppt@linux.ibm.com>,
 "alexios.zavras@intel.com" <alexios.zavras@intel.com>,
 "behrensj@mit.edu" <behrensj@mit.edu>,
 "palmer@dabbelt.com" <palmer@dabbelt.com>,
 "allison@lohutok.net" <allison@lohutok.net>,
 "gary@garyguo.net" <gary@garyguo.net>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "hch@lst.de" <hch@lst.de>, "han_mao@c-sky.com" <han_mao@c-sky.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 2019-11-19 at 23:51 -0800, Paul Walmsley wrote:
> Hi Atish,
> 
> On Mon, 18 Nov 2019, Atish Patra wrote:
> 
> > The Supervisor Binary Interface(SBI) specification[1] now defines a
> > base extension that provides extendability to add future extensions
> > while maintaining backward compatibility with previous versions.
> > The new version is defined as 0.2 and older version is marked as
> > 0.1.
> > 
> > This series adds support v0.2 and a unified calling convention
> > implementation between 0.1 and 0.2. It also adds minimal SBI
> > functions
> > from 0.2 as well to keep the series lean. 
> > 
> > [1] 
> > https://github.com/riscv/riscv-sbi-doc/blob/master/riscv-sbi.adoc
> > 
> > The base support for SBI v0.2 is already available in OpenSBI v0.5.
> > This series needs following additional patches in OpenSBI. 
> > 
> > http://lists.infradead.org/pipermail/opensbi/2019-November/000704.html
> > 
> > Tested on both BBL, OpenSBI with/without the above patch series. 
> 
> Just based on a quick look:
> 
> All of the patches in this series add warnings reported by 
> 'scripts/checkpatch.pl --strict'.  Could you please fix and repost?
> 

Yeah sure. I will do that.

> Also: could you rebase these patches on top of the current RISC-V
> for-next 
> branch?  There are some significant conflicts after Christoph's
> nommu 
> work.
> 

ok. I will rebase on top of for-next.

> We'll wait to send these upstream until the SBI v0.2 spec is frozen,
> but 
> in the meantime, it'll be good to get these into the experimental
> branch.
> 
> thanks,
> 
> - Paul

-- 
Regards,
Atish
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
