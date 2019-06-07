Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D38B3971A
	for <lists+linux-riscv@lfdr.de>; Fri,  7 Jun 2019 22:55:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJTh3HFRjbFjHd9x6iUdlTfiuCrSUfWJbMRxJucapRA=; b=Fp+2x9YcyKnPZb
	a8evYe32CW1dH8l5hoak1h4yT9xPYbFIX3xlYourrKL8M2yzvsWNNjgJsPTWDfODmAi/jcGSMZb1L
	VW3nNNChBMARdc4e+RcsDN4Oq8RdMHTMtRCVtopF0JAO1B4kti02HUC0Wu4IlpDCp8fB/VwweiP5M
	Tpx9ka0rk4c6/ZWU56tO9+5BYFk9sDi0KMYRr+1TFdZNqYBSM8gkk2udAeivr32OMxajq996ZwJgI
	Z3xTd7O+fdU8/JSRsys3U+Bx5+t9eIR1XfMsjMA//75eOHdx/gh9MHewDDZCKUQYZ9rmjz14eRm7k
	cUjv7BWm73/9CGkO/8dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZLtV-0002rE-I1; Fri, 07 Jun 2019 20:55:25 +0000
Received: from mail-edges23.fraunhofer.de ([153.97.7.23])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZLtR-0002qQ-Ja
 for linux-riscv@lists.infradead.org; Fri, 07 Jun 2019 20:55:23 +0000
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EOAwCezvpc/xoBYJlmHAEBAQQBAQc?=
 =?us-ascii?q?EAQGBZYIRalMBHhIoCoQLiHuJeYINmh48CQEBAQEBAQEBAQgjDAEBAoQ+Ahe?=
 =?us-ascii?q?CVCM4EwEDAQEFAQEBAQQCAmkcDIJ0BE07MAEBAQEBAQEBAQEBAQEBARoCDWQ?=
 =?us-ascii?q?BBSMROhsCAQgYAgImAgICMBUQAgQBEoMjggkBD6gagTGEBQEBhigGgQwoi1u?=
 =?us-ascii?q?BWD6BEYMSPoJhAgIYgUeDCoI2IgSMBoIbmwMDBAICgTFdhkOMfhuCJIZ4g1i?=
 =?us-ascii?q?KHY0PhxOPS4FmIoFYcU+CbIV/hRSFCAE2PwEBMY8UgSEBAQ?=
X-IPAS-Result: =?us-ascii?q?A2EOAwCezvpc/xoBYJlmHAEBAQQBAQcEAQGBZYIRalMBH?=
 =?us-ascii?q?hIoCoQLiHuJeYINmh48CQEBAQEBAQEBAQgjDAEBAoQ+AheCVCM4EwEDAQEFA?=
 =?us-ascii?q?QEBAQQCAmkcDIJ0BE07MAEBAQEBAQEBAQEBAQEBARoCDWQBBSMROhsCAQgYA?=
 =?us-ascii?q?gImAgICMBUQAgQBEoMjggkBD6gagTGEBQEBhigGgQwoi1uBWD6BEYMSPoJhA?=
 =?us-ascii?q?gIYgUeDCoI2IgSMBoIbmwMDBAICgTFdhkOMfhuCJIZ4g1iKHY0PhxOPS4FmI?=
 =?us-ascii?q?oFYcU+CbIV/hRSFCAE2PwEBMY8UgSEBAQ?=
X-IronPort-AV: E=Sophos;i="5.63,564,1557180000"; d="scan'208";a="11337110"
Received: from mail-mtaka26.fraunhofer.de ([153.96.1.26])
 by mail-edgeS23.fraunhofer.de with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 22:55:09 +0200
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0CfAgCezvpcfRBhWMBmHAEBAQQBAQc?=
 =?us-ascii?q?EAQGBZYJ7UQEgEigKhAuIe4wGmloJAQMBAQEBAQgjDAEBhEACF4J2OBMBAwE?=
 =?us-ascii?q?BBAEBAgEEFAEBFjojDIVLAQIDIxE6GwIBCBgCAiYCAgIwFRACBAESgyOCCg+?=
 =?us-ascii?q?oGoExhAUBAYYoBoEMKI0zPoERgxI+gmECAhiBR4MKgjYiBIwGghubAwMEAgK?=
 =?us-ascii?q?BMV2GQ4x+G4IkhniDWIodjQ+HE49LgWYggVlxT4JshX+FFIUIATY/AQIwjxS?=
 =?us-ascii?q?BIQEB?=
X-IronPort-AV: E=Sophos;i="5.63,564,1557180000"; d="scan'208";a="46147087"
Received: from fgdemucivp01ltm.xch.fraunhofer.de (HELO
 FGDEMUCIMP11EXC.ads.fraunhofer.de) ([192.88.97.16])
 by mail-mtaKA26.fraunhofer.de with ESMTP/TLS/AES256-SHA;
 07 Jun 2019 22:55:08 +0200
Received: from FGDEMUCIMP01EXC.ads.fraunhofer.de ([10.80.232.40]) by
 FGDEMUCIMP11EXC.ads.fraunhofer.de ([10.80.232.42]) with mapi id
 14.03.0439.000; Fri, 7 Jun 2019 22:55:08 +0200
From: "Auer, Lukas" <lukas.auer@aisec.fraunhofer.de>
To: "paul.walmsley@sifive.com" <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "atish.patra@wdc.com" <atish.patra@wdc.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "khilman@baylibre.com" <khilman@baylibre.com>
Subject: Re: [PATCH v3 0/5] arch: riscv: add board and SoC DT file support
Thread-Topic: [PATCH v3 0/5] arch: riscv: add board and SoC DT file support
Thread-Index: AQHVGRnoMEcuH+N8q0CBwbP0jHsqzqaNNtEAgAHw9wCAAScdgIAAEokAgAAxaoA=
Date: Fri, 7 Jun 2019 20:55:07 +0000
Message-ID: <2edcc269fece4110d2629968c31867ff659e3285.camel@aisec.fraunhofer.de>
References: <20190602080500.31700-1-paul.walmsley@sifive.com>
 <7h36kogchx.fsf@baylibre.com>
 <05010310-baa2-c711-cb54-96a9138f582a@wdc.com>
 <7hftolcp90.fsf@baylibre.com>
 <cf846786-10ed-f0ee-8664-b831a72386da@wdc.com>
In-Reply-To: <cf846786-10ed-f0ee-8664-b831a72386da@wdc.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.80.233.51]
x-tm-as-product-ver: SMEX-11.0.0.4179-8.200.1013-24664.000
x-tm-as-result: No--23.108600-8.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
Content-ID: <FED1EFE8D074F4469A1DBA7F1F5EAD4D@xch.fraunhofer.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_135521_954294_F18F2DB4 
X-CRM114-Status: GOOD (  19.59  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [153.97.7.23 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 2019-06-07 at 10:58 -0700, Atish Patra wrote:
> On 6/7/19 9:52 AM, Kevin Hilman wrote:
> > Atish Patra <atish.patra@wdc.com> writes:
> > 
> > > On 6/5/19 10:37 AM, Kevin Hilman wrote:
> > > > Hi Paul,
> > > > 
> > > > Paul Walmsley <paul.walmsley@sifive.com> writes:
> > > > 
> > > > > Add support for building flattened DT files from DT source files under
> > > > > arch/riscv/boot/dts.  Follow existing kernel precedent from other SoC
> > > > > architectures.  Start our board support by adding initial support for
> > > > > the SiFive FU540 SoC and the first development board that uses it, the
> > > > > SiFive HiFive Unleashed A00.
> > > > > 
> > > > > This third version of the patch set adds I2C data for the chip,
> > > > > incorporates all remaining changes that riscv-pk was making
> > > > > automatically, and addresses a comment from Rob Herring
> > > > > <robh@kernel.org>.
> > > > > 
> > > > > Boot-tested on v5.2-rc1 on a HiFive Unleashed A00 board, using the
> > > > > BBL and open-source FSBL, with modifications to pass in the DTB
> > > > > file generated by these patches.
> > > > 
> > > > Tested this series on top of v5.2-rc3 on HiFive Unleashed board using
> > > > OpenSBI + mainline u-boot (master branch as of today).
> > > > 
> > > > Tested-by: Kevin Hilman <khilman@baylibre.com>
> > > > 
> > > > > This patch series can be found, along with the PRCI patch set
> > > > > and the DT macro prerequisite patch, at:
> > > > > 
> > > > > https://github.com/sifive/riscv-linux/tree/dev/paulw/dts-v5.2-rc1
> > > > 
> > > > nit: I only see this series in that branch, not any of the prerequisite
> > > > patches you mentioned, which made me assume I could this series alone on
> > > > top of v5.2-rc3, which worked just fine.
> > > > 
> > > 
> > > I tried only this series on top of v5.2-rc3. Kernel boots file with DT
> > > updated via U-Boot. But networking didn't come up.
> > > 
> > > Do you have networking up after the boot? If yes, can you please share
> > > the config.
> > 
> > I didn't test networking from the kernel initially, but looking now, I
> > do not have networking come up in the kernel either.
> > 
> 
> ok. I am not alone then :).
> 
> @Paul: Do you get networking up in your FSBL + BBL + Linux boot flow 
> with the DT patch series ?
> 

There does not appear to be a device tree node for the ethernet
controller, which would be why networking is not coming up. U-Boot also
has to be updated to match the new device bindings introduced by the
ethernet controller patches currently on the mailing list [1].

Thanks,
Lukas

[1]: 
https://patchwork.kernel.org/project/linux-riscv/list/?series=121579
_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
