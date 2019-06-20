Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BFF4CBB5
	for <lists+linux-riscv@lfdr.de>; Thu, 20 Jun 2019 12:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2X0CMrMLzeNRdz7XgGzG47DBamxRxqqRLYk02I9+Se0=; b=hz7
	xbSGM5TECIRxar/NKBViCAYsuiqm/tt7iRwRValuIKptQNwc9d2eE3z22tTw4/jYlKpy6Q8NkV1yG
	JeAdP0fT+rKfOD+6YfzKsxVxWCv4FNi20ZzbXGjWULdlhcyCdRSn8WF9wAkxqFx/NkfYEkkP2cT8t
	E/6Hy+RGXF9/RPJdurZ+Gdae18q+5LB1R76V31ZnziPiNDrL4VeZOWS4uQIgzN5LnPNh3O/+uWNit
	+omtoSFbTGa4uzW6SPOSlmX80stmmGRdiUxehe2lzppAgag7XPipKGRltaLWQomZWl5uZzhG0kY+8
	+9LOFKVDzZh3kzEvaHSiGni0T0QI3sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hduFE-0003uq-LY; Thu, 20 Jun 2019 10:24:40 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hduFA-0003tv-JX
 for linux-riscv@lists.infradead.org; Thu, 20 Jun 2019 10:24:37 +0000
Received: by mail-lf1-x12a.google.com with SMTP id a25so2063872lfg.2
 for <linux-riscv@lists.infradead.org>; Thu, 20 Jun 2019 03:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=QJ8zoEdyf3GpBi6h0WbiGRKlnyJ4YVfurV/jTTE++jw=;
 b=urK6zmBL/q6VR69k7radcX4cP4zp/4dBDp9Jpx0D5MofO/MMOH0ijK1RnP26+ZepxO
 YEEcQ+hUeSBTH1LFCQyy1LyYc3CF1FMxpiJOIHDZlJFkXOymQQBPajf2s93v9ldXRmaT
 h2rXjZ6/kZkf3tC8G9MKW2tO1XgJkZKvqc3NK66sY8mhtWOiletxAYn4/gRiZTndCH3R
 c6HbPtgXEdsM4b8cwuPitub66m64aDIlHFca2LAmS3yozeyylUrWOmEM9ilC8UVVAlo5
 W1OtQQeC22O64RFxSD/tyKUOf2bLHIkcgY++6+PZ6VjPlgG0Nk36TvTwSkXME3xXGFgw
 OHuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=QJ8zoEdyf3GpBi6h0WbiGRKlnyJ4YVfurV/jTTE++jw=;
 b=i8nqcy+xs8hAUzZcfG2+nrTPVT2QXKWESCqiuPPdnCEcmMT/WkOhL8OTdMnQ7RbuFD
 dS7VUv21LGglkHfXhjYivkse3rNFJ5Es4vEDpsWdeK9u0hRaqxHKDGk6YTokg4DP/dPl
 RHl1dQJ06d74+XbYdqMjP5g4r4Uvl3vsXH7AH7pntW4uubOy1qMLkni+tsgskBsy0kF+
 wtdpdU6dJwS69GhG9xl2c6JlDD8S3i5lcZWy/ZeUyN1ukAAOV+ZvdXXZepam3jObGIwp
 2nrqV9a3GFjTMRfNLfjPJcwJ7L2oLaV5XOFWXfOgS71aaGPHcbOXmRMRDHdTr+1wX02l
 qzPA==
X-Gm-Message-State: APjAAAX0RNlEdHI3nUW3qkAzVF7bn3YBX6Vp59xa1LpR4r6MrShGXVfC
 xbS7yMs0kmdYXzeT30o8HpDusinl47fCIBbfvq1GWnW5afg=
X-Google-Smtp-Source: APXvYqzlvGH5+vuesYqFqu1+gTvcsCIH4EvnSumrUV7KeBkh/xg2JNN7UJtXZwP3P8IgxFsXyqE7xOIFGUeA2qiWHXo=
X-Received: by 2002:ac2:4565:: with SMTP id k5mr8496083lfm.170.1561026274863; 
 Thu, 20 Jun 2019 03:24:34 -0700 (PDT)
MIME-Version: 1.0
From: Charles Papon <charles.papon.90@gmail.com>
Date: Thu, 20 Jun 2019 12:24:24 +0200
Message-ID: <CAMabmM+MSWtAFwpO+U9_mQt2RMg_1uSbtXjk37f722oSraDC9w@mail.gmail.com>
Subject: irq-sifive-plic + gpio-sifive break IRQF_ONESHOT
To: linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_032436_677793_82FF6866 
X-CRM114-Status: UNSURE (   6.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (charles.papon.90[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (charles.papon.90[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12a listed in]
 [list.dnswl.org]
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

Hi,

Was using a chip driver (W5500) which use a threaded irq with the
IRQF_TRIGGER_LOW | IRQF_ONESHOT flags and i got some issues.

The interrupt should have been masked to wait the W5500 irq handler to
be executed, but that wasn't the case.

As far my understanding go, the plic driver should use
handle_level_irq instead of handle_simple_irq, as interrupts connected
on it could be level triggerd.

Also, the plic irq_mask/irq_unmask should be implemented for two reasons :
- If they are null, it make crash chained_irq_enter calls from let's
say connected gpio drivers durring IRQ handeling
- the irq_unmask is very much required to handle threaded IRQF_ONESHOT IRQ

So maybe the plic claim release (writel(hwirq, claim);) should be
moved into its irq_unmask, and the irq_mask should be implemented as a
dummy function.


The same kind of issue appeared witht eh gpio-sifive driver, the
driver is using  handle_level_irq instead of handle_simple_irq and do
not implement the unmask, which break the IRQF_ONESHOT handeling.

Do you agree ? I'm not experienced in linux dev.
Thanks

Charles

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
