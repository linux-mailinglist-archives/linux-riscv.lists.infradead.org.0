Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFBA32DE9
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Jun 2019 12:49:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y9lkhf6qyNs8fH101ivzTkXxcR6bTWGNDXHEC5fyXO0=; b=McQ2b4E+4Ww4dh
	2GVJLVCQWZ8givSspKsu/1KYd2QaVrsTshvRPpC5fajwmXRGR91H0jg6SSEqOCoSu3nQUWQFr46uz
	FlhFKciXnhnSqf6mV8InEYUJyQcRqV6+gskW1MCP+pcLoCo/9VO+YWT/EL7XVWD7yRNEqY+kxZ6DA
	GPxWkCfDNaIh6kFybsFWvvHp7plXCrkCF3XI10kCx68c+cxy5SM2YbnsjDu9EG9jeNtYHZxvNN1Dy
	aVD53VRMhqRZMhWRyfDHBeUTJSl7hT53/75vmtj56EarEIxhl0KLKeJmtxtuyehPmH7xkzCPPDFoB
	4pWUs0qC7v/16fxpF56g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXkWn-0006Eb-TP; Mon, 03 Jun 2019 10:49:21 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkWk-0006Du-QK
 for linux-riscv@lists.infradead.org; Mon, 03 Jun 2019 10:49:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E8EBFADC4;
 Mon,  3 Jun 2019 10:49:16 +0000 (UTC)
From: Andreas Schwab <schwab@suse.de>
To: Karsten Merker <merker@debian.org>
Subject: Re: 5.2-rc1 boot on Unleashed
References: <5c1ffb76-b18a-dbae-d3ad-f3d2cd41ee44@wdc.com>
 <alpine.DEB.2.21.9999.1905220942040.20842@viisi.sifive.com>
 <db248e63-c0bc-7fd8-cf2d-d13c8f140036@wdc.com>
 <alpine.DEB.2.21.9999.1905221334460.23235@viisi.sifive.com>
 <34F7A31E-17F9-4A3C-9F42-DE7837F899CE@sifive.com>
 <CAAhSdy0R6UgxhgrU9NZegmoigjqZmx6RwoGngPdmzrzaUUxpTA@mail.gmail.com>
 <4572851B-EF46-45A1-A806-663894673EF9@sifive.com>
 <MN2PR04MB60610DD66EC6E93C25D18F5F8D1F0@MN2PR04MB6061.namprd04.prod.outlook.com>
 <mvm1s0hd5ln.fsf@suse.de>
 <E42C85A7-47D6-4A8E-B9C8-A5D42057A3F3@sifive.com>
 <20190529185951.5rsoozymr32xychb@excalibur.cnev.de>
X-Yow: Yow!  I want my nose in lights!
Date: Mon, 03 Jun 2019 12:49:14 +0200
In-Reply-To: <20190529185951.5rsoozymr32xychb@excalibur.cnev.de> (Karsten
 Merker's message of "Wed, 29 May 2019 20:59:51 +0200")
Message-ID: <mvmwoi37xlh.fsf@suse.de>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.2 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_034919_004696_4FE2A443 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Palmer Dabbelt <palmer@sifive.com>, Anup Patel <anup@brainfault.org>,
 Anup Patel <Anup.Patel@wdc.com>, Atish Patra <Atish.Patra@wdc.com>,
 Lukas Auer <lukas.auer@aisec.fraunhofer.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Troy Benjegerdes <troy.benjegerdes@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Bin Meng <bmeng.cn@gmail.com>,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mai 29 2019, Karsten Merker <merker@debian.org> wrote:

> Mainline U-Boot already uses the distro bootcmd environment for
> the qemu "virt" machine and it works well.

The distro_bootcmd doesn't work for the sifive platform yet because it
doesn't set the correct MAC address for booting.

Andreas.

-- 
Andreas Schwab, SUSE Labs, schwab@suse.de
GPG Key fingerprint = 0196 BAD8 1CE9 1970 F4BE  1748 E4D4 88E3 0EEA B9D7
"And now for something completely different."

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
