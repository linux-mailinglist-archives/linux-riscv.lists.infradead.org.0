Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF5C72754
	for <lists+linux-riscv@lfdr.de>; Wed, 24 Jul 2019 07:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MrDAzy4TgN1rzUMRH4PKsP79Y5QrecXaXlaBABlftAw=; b=M3VRfUXJ6MEp60
	zE+KjBEP4ShSw1i1A5sOUBj/rG7d3pCP29OWFrvI4WpHi12TPRNaipuQXyKRwgBkX3F0y5ui1vC2n
	yYvhC/sMHwCBl29ycWJSymTUtWS1o0ZNurvll/T44zRcUS2PRuWaGzl9n8M4pxK6wGeIXlEDzwX+3
	ZTwuTk/uy1mUNOcrO8ip7ZyWXDX8sI2Yv5GM9Ms32rBFp/fiO9YGElO5fMUaLAEo23iZzjwbAsAse
	F8zkFLebTaKqdeZv98073+cJ8aaQUQttMT5JIogcr/zxChiqu8Dgk0X+qgj4PnbNgPBJbFDOI+Td9
	tFgu18WOH1XdazmRPhiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq9qx-00062e-Hv; Wed, 24 Jul 2019 05:30:16 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq9qt-000621-KF
 for linux-riscv@lists.infradead.org; Wed, 24 Jul 2019 05:30:12 +0000
Received: by mail-ed1-x52d.google.com with SMTP id e3so45965294edr.10
 for <linux-riscv@lists.infradead.org>; Tue, 23 Jul 2019 22:30:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wx/47ClXCS1zZdpCKN2Vgf0whsYC7VagQuZoyzyLy+E=;
 b=hhBcWBERDQhCeLRhIBLkGQQ+NRUZja/2DzqbPQobDy9JVui3pQF7eOyT23rh6Hxp5k
 NrZzi6gn+zqQcFV4jshWuB1PxGAvzVuk5sG3Yz1DnVAWPxUmvVhMzuLVVzNU3ijXBdkT
 9ZP3ZtflGql90A3lKDEetpaNM6Cu1/D9EM5gufFaZEiezz4h/Cxtf2haemqCRz3vBhdA
 twTHUMiAh0u81zMeb8UEAvQljGMKwAIGLCO4ez0bG2XO2dxHAEZSXK6AimNGaI6TIg8P
 nvQbee89+iKAT7jGCS2a8JXiFIjwcwp+Y5ZWEvGXnzi3o4OCP6VMJ7YGhUL0W8PpVrZZ
 hQDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wx/47ClXCS1zZdpCKN2Vgf0whsYC7VagQuZoyzyLy+E=;
 b=rgp6r33F+A/8rtAhYluZ1ATooFOg4wZ0ePVxR6XiTlKjQmm8nmvEpQrxkSfUHTRYMS
 A+FgTfw4shj4aaHHAPl5SRqv1OOXo6hq6vpQlRjKaGUv7X3b4HTko/7nptJC2cqk9RPI
 QwaQVlRJ5Ia6XYWp5DpFeZiWk3uhxKZRCBUh7m31uqkSqBmJuZ1F9w0wJYpp9LZxUne8
 F931E4jT68qOUPIk6Pj9pSPV1s+B4kTy73Hxmae8EhffG7V3Rdwg1C524oANQ2sSSchQ
 ZnBan+c3gMdxjXFwxaZvR/IH1iWDpkXJHSl70NLtFJxIuU1iY1R+V8GMp+2IICPGpWsM
 KbEQ==
X-Gm-Message-State: APjAAAWmbAuIkLEUh29RdflS3m/jOLBrtpqtd2U03krLUm3FHpuUtDiR
 PBpyjFjszHhtkzmqQbP6OQUrS/ZHPcsp8cKsJ3c=
X-Google-Smtp-Source: APXvYqymgnhNJ17DQnz2iuTcDPaV+KMcH2/ZPgU6WmsGnzlq8Fhcw6APPAVEvJ/EkaYbSmE33yLMsNpL74/wTlXSdq8=
X-Received: by 2002:a17:906:499a:: with SMTP id
 p26mr56402374eju.308.1563946210198; 
 Tue, 23 Jul 2019 22:30:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAEUhbmVqB+WpsZYbwLj4ZAAL1aESbNO_6roHdq=EfxgjDbcRTg@mail.gmail.com>
 <alpine.DEB.2.21.9999.1906211355370.13854@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1906211355370.13854@viisi.sifive.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Wed, 24 Jul 2019 13:29:58 +0800
Message-ID: <CAEUhbmVQ-HAWYwh1mBp82kBXkpk7fiT9Ow83=qX5-q32B6Pn6w@mail.gmail.com>
Subject: Re: sifive-fu540-prci.h license (included from fu540-c000.dtsi)
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_223011_667270_A2B7C640 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Paul,

On Sat, Jun 22, 2019 at 4:57 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> Hello Bin,
>
> On Fri, 21 Jun 2019, Bin Meng wrote:
>
> > I see fu540-c000.dtsi is dual licensed under GPL-2.0 OR MIT. But there
> > is one file inclusion:
> >
> > #include <dt-bindings/clock/sifive-fu540-prci.h>
> >
> > This sifive-fu540-prci.h is only licensed under GPL-2.0.
> >
> > I think this prevents anyone that has GPL contamination concerns from using it.
> >
> > Would you please consider making sifive-fu540-prci.h dual licensed as well?
>
> See below
>

Has the patch been applied?

Regards,
Bin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
