Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EED81152EF
	for <lists+linux-riscv@lfdr.de>; Mon,  6 May 2019 19:41:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FwrLZZtbfEtlvbZyFZpOejo+AgRfcI4mvcCDjMDx87g=; b=mSsfqEUT/mJAAO
	2RTPiIKGnkGwqFL9/4BYlUniPtCwSNmkbaMNa3ZV9CfGUxWL74Pz74dYzhe7bAzZlLsrWxrKFFRcB
	kafhyD09pB/0ptTW8IW3I/UV5Bq4lY0BXaiMtKV3mUfrlzgB0bYQA9+HlhS8S8VbsDbji4lItikMy
	LcgJ/+6HsMM8P++YE7WQwS/fbTKkbfNBKW8XQPYNTWrt/HpAQLRJFAFY/KTZNy0o6PhHd3zQObuOb
	JPo4SWToFezY0582yYaI5dTE1E1bcjo1n/xz1WsNhMRcjDAHQTZWOL0oDzSktZ7WpyUUFv4RS9vIh
	nvQWwaRYimSRZmOOBTPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNhcW-0005AU-Ok; Mon, 06 May 2019 17:41:44 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNhcT-0005A6-Fi
 for linux-riscv@lists.infradead.org; Mon, 06 May 2019 17:41:42 +0000
Received: by mail-vs1-xe44.google.com with SMTP id b23so8675433vso.1
 for <linux-riscv@lists.infradead.org>; Mon, 06 May 2019 10:41:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dH/alIcSKffA1y2RRlZpvtM5MZ4euuymjniYCSBueNk=;
 b=KE53O3Y8F/GfFN+9A4pCqL+PxAzhiCWWW4PA5x7wEj5ThydBOQWLySloLsIj1r94/l
 jge3nd+TBY5mcxaVry8MdgIBTFR2FuPHrxJ2jWnfa90EasrHNeOepJlAzznWKOeQGtwp
 uuOmngpZD6le8N8O0uiBiOjnOAbTxdVZCjHZhGQDixeIoy/oBSc/IZVKAP4q9xRSgg4W
 cUXcmYsQtJJhZJEVvqptHnyfSqCp/zwykrlrE7OYpCm71Ir/uOeR9h2ctg04s8FvQOGj
 /J/1gmdLZMW7oe6cJGAIaivR3YgmhWlYZggjlPgl2s03vtClNZzBgwj3R66mWkF75Zxz
 4Wxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dH/alIcSKffA1y2RRlZpvtM5MZ4euuymjniYCSBueNk=;
 b=OFQJDYzOFQGo7pR36unRKya5Dk8ZKv6HIfyzb+c8UBESzLSYKGf+/X60lecbKAnVDM
 ByAqFC/VJv84jYbyShD/Yfhf2TDPvSDlmTIx4BqzHqxY9aXQ0ckKHIQkLpVrBt7Dgz7B
 YzpthANMio73PJduvgJ+Xq7XA7iIowfym2ztVWqKovYDKBWoWoNTPmzXb7yeVqt7w3zl
 5XRsmFEWojQzC/CT6iAQrtrlR7s/yzfs+Si7Goe/n3U908m5UniW+HqtggpGi+6S9T5p
 XYYQAhD+u05hZjE0UJZtiY5l4635lRIh/FBkvEXGb9a7pvgy8d0NaJn4zP/EAxWb0O0f
 tO6g==
X-Gm-Message-State: APjAAAWQ7l/QcL5yh4yU/y62ZPDDJ/G9CzeCR307Nta62UR55dpal72r
 NsRnce4LC63LKUHi26HLu/2aVDjbqRbYOTBfh6t6FPeM9SE=
X-Google-Smtp-Source: APXvYqxyqvGFoX7WBWffNIKwJK+F9jk9BgOypI6lRO8xNum7HGbXRziLtoNK+1GxA8rZtYpvDoC6d7TT7WItEsI3tAo=
X-Received: by 2002:a67:e9d0:: with SMTP id q16mr14654015vso.178.1557164500244; 
 Mon, 06 May 2019 10:41:40 -0700 (PDT)
MIME-Version: 1.0
References: <1557147240-29551-1-git-send-email-sagar.kadam@sifive.com>
 <1557147240-29551-2-git-send-email-sagar.kadam@sifive.com>
 <20190506131919.GC15291@lunn.ch>
In-Reply-To: <20190506131919.GC15291@lunn.ch>
From: Sagar Kadam <sagar.kadam@sifive.com>
Date: Mon, 6 May 2019 23:11:25 +0530
Message-ID: <CAARK3H=fY=Y9GDR-t6RLBV4wOEduPD++F5NKAayNGeuHudrtew@mail.gmail.com>
Subject: Re: [PATCH v1 v1 1/3] dt-bindings: i2c: add documentation for adding
 SiFive I2C driver
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_104141_587725_E00D022E 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, peter@korsgaard.com,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, May 6, 2019 at 6:49 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Mon, May 06, 2019 at 06:23:58PM +0530, Sagar Shrikant Kadam wrote:
> > Add DT binding for OpenCore's based i2c device as found in
> > FU540 Chipset on HiFive Unleashed Platform (Rev A00).
> >
> > The doc explains, how to add DT support for I2C devices.
> >
> > Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
> > ---
> >  .../devicetree/bindings/i2c/i2c-sifive.txt         | 29 ++++++++++++++++++++++
> >  1 file changed, 29 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/i2c/i2c-sifive.txt
>
> Hi Sagar
>
> Please extend the existing i2c-ocores.txt file, not add a new file.

Hi Andrew,
Thanks for your review.
Yes I will extend the i2c-ocores.txt to support sifive devices, and
will submit a v2 of this patch.

>
>        Andrew

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
