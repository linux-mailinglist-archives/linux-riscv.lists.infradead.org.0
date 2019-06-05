Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EAC4362D0
	for <lists+linux-riscv@lfdr.de>; Wed,  5 Jun 2019 19:37:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lvCujYcIt0QC/8P9GgjySqTKPJEJjFnISenOJaQ954o=; b=XOedwCVoo3rlUq
	qu3mcR3viSQJah+EC+Hh5L/cv7IfukBYSsBOslJp+vwN8bznzE8SPSPXU2Wb5lKEAXIf4hXpQ7iD+
	Tqwrri8QxjsKuu5Bwghc5VGnrAvcHoCoOcM6W33iaIoM6ox5kJLeD3YGsMdGF1yPIHF8/I5+ePd9H
	IWSpEHrs10N3nHiCBBtJwQBkvUzuema72M5mRbfVbkTvrYluRGPI1iOuOvFEdA44x6iKnjw21/2ah
	0gNPldid1XZqhhL0T27RK7hyuLBtRxVG16DsTtEfILnQY1y9g/TQjlqp0VTFZUa2OGA9dIiq0FODS
	a6J3kN94Bx2oG0W0N9JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYZqS-0002IE-7U; Wed, 05 Jun 2019 17:37:04 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYZqO-0002Hs-GJ
 for linux-riscv@lists.infradead.org; Wed, 05 Jun 2019 17:37:02 +0000
Received: by mail-pf1-x442.google.com with SMTP id u17so15247193pfn.7
 for <linux-riscv@lists.infradead.org>; Wed, 05 Jun 2019 10:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:in-reply-to:references:date:message-id:mime-version;
 bh=/updNbVAXDRpwIEN7mxRzjn7O5DNwkaGNW0XCgNkty0=;
 b=UW304hnUawBvIhjTZZ77gkYQxhciqbhVs6H7uhZYjC3wM4CCIPIKUtB4itcDzxycrK
 XM9m8Zs/UuaeYIVybKePE1SpMQo/kOCPO3GfH8Q2OSh/sZGRpPkVrTbPdeOkm01RaGrk
 3m8bMzKhpSUcDYPEz+ifQ0IIqvokUZ2iFvZaVkNDtBRlTc7UYDIfrTxqzsOdgsWd0l2Z
 OTTFj82yQ9s0e8zRFmhTJN+OHgv+4vSrAKkeLyEeBgF5qDhpa624FFyVmoAEGeIU0WLx
 0MO7K9RbTNexgAlMJoeVD9u5aqaDWZkZF/pW3FgKn6NE0F4DwjeDOACyV3QIV1VfXOUN
 MxkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=/updNbVAXDRpwIEN7mxRzjn7O5DNwkaGNW0XCgNkty0=;
 b=pSToCuAyClpMWqDTNPMRcRa//r283NSK8DotNZGLo8GTxZJZPFrCsCgy4Et11DS0mJ
 gW8p42K//M5D80r7FeAqYWq8Iv8uMmc/eO0/1FFr60LqrjKRJVYVy0gCXoXcPimpZT3z
 aLeq/eHDS7R8/V+FWGYIbkJ+MPIlXoqCne8dize7FkIspTw5CalHKhrZt08Gc//kEA9/
 oWFTo9lkgrlxbK/JHNFjgZodFmDNPy/mGZ8zg7WuW/e2hO/5snfvAAjyctDLCinbTV4O
 lJqcU3Hy3jAMlYlNliqLWpGc1nbk4Ac6WTxRj/+mfw35Oo4cC1knS7aZRQG0RmSIAzpI
 pqBQ==
X-Gm-Message-State: APjAAAVLLTKbYs4LloEwMD3gd7yIufvzqa/9SZWsQiAE4jGufz7n0JEt
 0nIuje4YmWAeTtRiR8sQD9EhTA==
X-Google-Smtp-Source: APXvYqyk3K4EqN15Job2mwtC6F0AWmOqpL3rIbmhXdwLidwXBLjenjtBYFFXGMyDk8TJGTw6Bmkhkw==
X-Received: by 2002:a63:6cc3:: with SMTP id h186mr5988401pgc.292.1559756219480; 
 Wed, 05 Jun 2019 10:36:59 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id u20sm10101223pga.82.2019.06.05.10.36.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 10:36:58 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 0/5] arch: riscv: add board and SoC DT file support
In-Reply-To: <20190602080500.31700-1-paul.walmsley@sifive.com>
References: <20190602080500.31700-1-paul.walmsley@sifive.com>
Date: Wed, 05 Jun 2019 10:36:58 -0700
Message-ID: <7h36kogchx.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_103700_586946_17FFC7E0 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Paul,

Paul Walmsley <paul.walmsley@sifive.com> writes:

> Add support for building flattened DT files from DT source files under
> arch/riscv/boot/dts.  Follow existing kernel precedent from other SoC
> architectures.  Start our board support by adding initial support for
> the SiFive FU540 SoC and the first development board that uses it, the
> SiFive HiFive Unleashed A00.
>
> This third version of the patch set adds I2C data for the chip,
> incorporates all remaining changes that riscv-pk was making
> automatically, and addresses a comment from Rob Herring
> <robh@kernel.org>.
>
> Boot-tested on v5.2-rc1 on a HiFive Unleashed A00 board, using the
> BBL and open-source FSBL, with modifications to pass in the DTB
> file generated by these patches.

Tested this series on top of v5.2-rc3 on HiFive Unleashed board using
OpenSBI + mainline u-boot (master branch as of today).

Tested-by: Kevin Hilman <khilman@baylibre.com>

> This patch series can be found, along with the PRCI patch set
> and the DT macro prerequisite patch, at:
>
> https://github.com/sifive/riscv-linux/tree/dev/paulw/dts-v5.2-rc1

nit: I only see this series in that branch, not any of the prerequisite
patches you mentioned, which made me assume I could this series alone on
top of v5.2-rc3, which worked just fine.

Kevin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
