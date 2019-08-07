Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E00384B86
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 14:29:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MP8u50koRgLYGvho8o3Lc6L4mBWqhA9kvMVrfeeDKU=; b=ZXmlHmBDy+1Fw5
	Y135I8vrUzQTOFVp/UbIki0miDKv3HmYkmcfbiNqqoWUUa8/lWsGiA4CNnBzN827xmT+fwHro3zyB
	r8dQUoLcnUFf43x4uVw7S9wvyBxMrWUncCgtUOoj6jzMtSH/Z383OjuhbT+CyMhs2XKh8r+bNR6W0
	svz6sswTY27Y8G5jwRtc/fD2Gl8m8+lbs6lA9Q6C6Tc+J97cHEcnThJo0pnHrZ5/zhKG0aKkHW+IC
	f/AorkvQ+hfEA2MJ5E/6zDBnsHWS1YfSXnp+AO85YpDFHp7Il24Sk4Mn9BgBtczB1uF89i4zJHPT1
	dOxZWL4h3FMIOtpNPdrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvL46-0005Ov-OH; Wed, 07 Aug 2019 12:29:14 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvL40-0005LG-IU
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 12:29:10 +0000
Received: by mail-ed1-x543.google.com with SMTP id v15so86069547eds.9
 for <linux-riscv@lists.infradead.org>; Wed, 07 Aug 2019 05:29:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RMGcLcpBFvBpeJnTu8pKFKchF/J4VwKD/tTDs+NsQXU=;
 b=Hs2BZRdpKwuVf04EmL/zxWrnNhMxtMy7h0wGB3ikJvc3l/oxOzFWnumHtlGGzHAEX1
 zySBfRKQCOt8Fs1uW+NRNdqCLcU6I1CKBWWPz3V9PUuHR/Qq/eG6O11acF4zG5BpD36m
 2ZLfT9yo6+bHOkew7NGT5pU4xa/i+jOGcoXw+sKYn0jBTp9YB504PVh6Ehicjsns5mUp
 3TAsX7d+r/kbrvYcHl9IW9NaYgYGWncAM3Z0wpJ2niOieZ1SviuTY+xedO0IjXBR+4NO
 QwTPlWBimBKD0BfkFRwF3fFfNZiLCDA7fSQDn4OjAYuqA1KrmbgK9qCD0VTrqYif08HT
 gZdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RMGcLcpBFvBpeJnTu8pKFKchF/J4VwKD/tTDs+NsQXU=;
 b=aIwCBuXGMtf+h0TW8tzN3lMf2ePn2CbuyQF2Wk67uvui9Dl8bBst7nUEN7EFi+tJDQ
 WInb1ZhipuS59SCmT9vWFKKxf1KLQVW1RMjeVcro2+xsBSM6CG9VGkt1AUuHmttr7JyD
 VbTmwhpsBgu0T0iwkIKoUr8sXjJqa3tj0vBgHpRiershA9ETAcufOMjKb56k4Eaahz76
 osnBXIFMySkwasK1ujiT3B7me/iR2xkrISOv2CTvq8LAM1dAs+hqRDxtf5wr4lFsldgy
 uLJ6M/FRy8Q/E8QKdpnJB40s3Dp6+I0RTYJEqCaHWwrliNhqemulVCxCMgWExt7Ie3rj
 pLNA==
X-Gm-Message-State: APjAAAU7KYHhNzfLhC6OSwnLLqIEEeK9ypRVIxPyHjsT/kMiKXsqkUsV
 U9MkYyeDyM0UfrC+pbXKpYb5d3jC3v8KBbf+TSk=
X-Google-Smtp-Source: APXvYqzCdGyICX2LUoiY5hqgxJ7SHzCXH7ef6H+PwGXHY9Jlh73ZnjzNMytBeuwief9bV3euiMPvWui+bAoe41vQnDE=
X-Received: by 2002:a17:906:fcb8:: with SMTP id
 qw24mr8113765ejb.239.1565180947146; 
 Wed, 07 Aug 2019 05:29:07 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1908061929230.19468@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1908061929230.19468@viisi.sifive.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Wed, 7 Aug 2019 20:28:54 +0800
Message-ID: <CAEUhbmVTM2OUnX-gnBZw5oqU+1MwdYkErrOnA3NGJKh5gxULng@mail.gmail.com>
Subject: Re: [PATCH] riscv: kbuild: drop CONFIG_RISCV_ISA_C
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_052908_726997_17001881 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
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
Cc: Atish Patra <atish.patra@wdc.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 7, 2019 at 10:30 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
>
> The baseline ISA support requirement for the RISC-V Linux kernel
> mandates compressed instructions, so it doesn't make sense for
> compressed instruction support to be configurable.
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Atish Patra <atish.patra@wdc.com>
>
> ---
>  arch/riscv/Kconfig  | 10 ----------
>  arch/riscv/Makefile |  2 +-
>  2 files changed, 1 insertion(+), 11 deletions(-)
>

Reviewed-by: Bin Meng <bmeng.cn@gmail.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
