Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA77914AFF4
	for <lists+linux-riscv@lfdr.de>; Tue, 28 Jan 2020 07:51:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2B6FoJDQ16nCYkBTaO55gt/Xf8ShNwggy/0e/BorbjY=; b=PhoDwXgkW4VpICIo11tnZTnoK
	eesABtWjvsJFbiYEUYWX7PnAtEMEDNhLqm8imY14rNHnG7ztcL3gC1+CtnIWNFJRtt+RVp06CfLhs
	1G41BlWutmCvcB3MIQgF0MnQGuEBgYXS3OSeGXRxxiDhgHl+b6hXyJ06M5bemc3AAjnd5iDw7qOhD
	a7aPhhTC6IR6NREweCijGRXffcOSjprzQRyzbpQVlaoDjnPaYcfkFZWAIycGEdA6ajX+jSP3MeUkU
	u472BMx+pGpA/ucD0tZE7dAwU1cOWGHTzpp6on1Z033WPwY15WUggoPyYyA0DQSQ/nyJbeW7A6yMX
	CQX2anqfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwKih-000289-GQ; Tue, 28 Jan 2020 06:51:31 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwKid-00027m-Um
 for linux-riscv@lists.infradead.org; Tue, 28 Jan 2020 06:51:29 +0000
Received: by mail-wr1-x444.google.com with SMTP id g17so14652077wro.2
 for <linux-riscv@lists.infradead.org>; Mon, 27 Jan 2020 22:51:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=2B6FoJDQ16nCYkBTaO55gt/Xf8ShNwggy/0e/BorbjY=;
 b=iJUmbZp2SvEFYYhNVJCMGwnsjckBKgcBL3bvG4ZEjTLtwkLKGVwgSMHdzyjCOnjj+o
 N3Qxpc1bJZoqGr/fTJ/mXtK42J/idFsCwWbVAoAce3fiHbNIWY1MDGGYJtoNP5YO/Olh
 DCClDtePtRA+h4m0R3L4JSlHqfu0ZQgwG1lmIeIP445GnLTpaT3ajO4U6sdBgV3jhSu9
 RmC/89evyTQdfCO4HnYbSG4BDJKMevAIVat2ps1AfiAV3Vc4z1ZlmZlb52owTg9blwQT
 oQ4MpNna0v2PKWvIkQsocHlfKbxrFJvwCzQ3YpgNIozM9dbpaMyrVqzADWV8ErYzc79g
 r/Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2B6FoJDQ16nCYkBTaO55gt/Xf8ShNwggy/0e/BorbjY=;
 b=f1a/R/XFCpCx28KO6vfB7jGOIH7mjb5yeFRcuFPcDntbQSgswCKZfdQzdIfhGcJBAv
 /4m/cywg3Cmj9IRdVuFVWDTkav3+JfmfMmqpzdp17D3UCm5J4s9YKaVUrojHDXucX5p0
 jy1kOIMQSrX0MSJ7nvG2/6B5eAjiR960NKfm7AA4XLLUGI4QdP5gvgCBMcBbrQwjQq1V
 6dCJqei0aX1xYidQPamR5KCSChS8G10cHS7Sp3HJsIyKDQW6fliO6NVzXqeMlhICa/Mm
 De5XJOUSXK3kheDwfhDiSYN1Nh0xV4T7GpY7zPq0h+kZJjiMDWjDi3vGvg1znv5ubqon
 Dx1w==
X-Gm-Message-State: APjAAAW+bArz5REU+OFQJfjpOTAmBaKwMsg07qOZmAAGtXYeUZA0RjgS
 Km8tFkxj9qhH8ayyfa6INPlyevWMJAJ7hOEes5k=
X-Google-Smtp-Source: APXvYqywqv2wV6rT6lg3Spgc97/Rr8ck68hspBdRx5i3kREihdpDHlE2tUiRUformfNtTQ/bUgx+UuKnE9FFZGOofrM=
X-Received: by 2002:adf:cd0a:: with SMTP id w10mr26681830wrm.107.1580194285957; 
 Mon, 27 Jan 2020 22:51:25 -0800 (PST)
MIME-Version: 1.0
References: <CAHOvCC5h1cKJzYx4sm-U0HDY9LGkhqWYGh+VaaOaJidP=Jkerw@mail.gmail.com>
In-Reply-To: <CAHOvCC5h1cKJzYx4sm-U0HDY9LGkhqWYGh+VaaOaJidP=Jkerw@mail.gmail.com>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Tue, 28 Jan 2020 08:50:49 +0200
Message-ID: <CAEn-LToqmqXJC0dMvu9qjSCBNRsSkYGrCFVbTojoOZDxTfwfSw@mail.gmail.com>
Subject: Re: [PATCH] RISC-V: Add and Update gpio-sifive.c for SiFive FU540 GPIO
To: JaeJoon Jung <rgbi3307@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_225128_015169_7005B1DE 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [david.abdurachmanov[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anup Patel <anup@brainfault.org>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Andrew Waterman <andrew@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 8:42 AM JaeJoon Jung <rgbi3307@gmail.com> wrote:
>
> I added and updated gpio-sifive.c for SiFive FU540 GPIO.
> (References: SiFive FU540-C000 manual v1p0, Chapter 17 "GPIO")
> I attached drivers/gpio/gpio-sifive.c (new)
>
> RISCV-FU540:/root# uname -a
> Linux RISCV-FU540 5.5.0-dirty #6 SMP Tue Jan 28 14:38:11 KST 2020
> riscv64 GNU/Linux
>
> $ git diff v5.5 --compact-summary
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi          |  13 ++++
>  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  36 +++++++++
>  drivers/gpio/Kconfig                                |   8 ++
>  drivers/gpio/Makefile                               |   1 +
>  drivers/gpio/gpio-sifive.c (new)                    | 447
> ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>  5 files changed, 574 insertions(+)
>
> I used drivers/gpio/gpio-sifive.c in kernel v4.15(freedom-u-sdk)
> released by sifive.

Yash Shah (SiFive) is upstreaming a new GPIO driver.

You might want to look at:
[PATCH v4 0/6] GPIO & Hierarchy IRQ support for HiFive Unleashed
https://lists.infradead.org/pipermail/linux-riscv/2019-December/007883.html

david

