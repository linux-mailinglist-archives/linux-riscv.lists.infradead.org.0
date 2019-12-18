Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DECD12492D
	for <lists+linux-riscv@lfdr.de>; Wed, 18 Dec 2019 15:11:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZtHoWzlWv4Nggpiz4JYJ0ktQQgL8zQr082eHKmhq0sA=; b=LoTfgsuzXAqMfwTJdOxp33aIH
	0imt+tIdXr7qnSNY+cLTmxIvR4naodNDojFSBNGVumr/X/uTVTx/Z37GcJLYFq34PKu4ppKWOBVVM
	QecjTk5kI3QncIv1IIrfyi9r4ONlNjmUWYSeBbRUfYelqofJT7V5lJWUKhrTyepj/DfGqOMmUD6bf
	0Tf6fE/JdpNZoN5/4X1g+9tHyur/AsNg1vl5Ul7Ptyd/5OfjCRf52mDD+Ua2ra3Dh3VGrycD8YGsU
	8k2ZnV4350Bbj7Futys+z5NvHBqF017xxGrTNpQpL9TLljL8y2Y20qPZ0cwU4XyNjQ22uEGeyQAY0
	SPyl3oZ2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iha2j-0004wo-3I; Wed, 18 Dec 2019 14:11:13 +0000
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iha2c-0004rm-VX
 for linux-riscv@lists.infradead.org; Wed, 18 Dec 2019 14:11:10 +0000
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com
 [209.85.222.50]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id xBIEAamA031762
 for <linux-riscv@lists.infradead.org>; Wed, 18 Dec 2019 23:10:37 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com xBIEAamA031762
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1576678237;
 bh=ZtHoWzlWv4Nggpiz4JYJ0ktQQgL8zQr082eHKmhq0sA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Y8IH6ikPKkZ91TfmMDmbLnCku2cKcFxE58DmglIwpn99HQzVP0ZgoP1YHXWG4K9tq
 Mt454eRcKY4Lo4HjJxr/lsGyAEMsFxOEZgakqmzincCPM7nmXAvOfJYHzciHJE8s2e
 6//kBXRQkxo/BuWPUiPDbkFb/5/l7rF8HHWJ0T6WtfnScNDNLfCGe4MXlpbYcNuDI0
 dTOvC3rlM1AGNbPHRWJO8KHLUzGxH+oOk4YN/Bn+nPwCWsMj1Ere+y+1uy5zDupZIm
 aBjpFvxpDPxs9QFY7/Ya4O8wJhWLEBgPbxqG/9/1Tgh8PRiSacy2R7I5qzMWgXxJkN
 9HWIChs8b86sQ==
X-Nifty-SrcIP: [209.85.222.50]
Received: by mail-ua1-f50.google.com with SMTP id f9so679177ual.4
 for <linux-riscv@lists.infradead.org>; Wed, 18 Dec 2019 06:10:36 -0800 (PST)
X-Gm-Message-State: APjAAAW7LCDJFaOedIY2nSmPOEkCKmERpEDhsXk0nEGJRMpwJtklOjCm
 Xs0EY+iNHSCjGBZAkY25234uouyYRVC29JjybXM=
X-Google-Smtp-Source: APXvYqw9cT8Od3W7kctCPwiC5X53fct0hh2cQ9AwQ0K101fOwa4G9Y/YaVZbIWbz6ZgR4YnRDQddC6j+idk0VSoEamk=
X-Received: by 2002:ab0:63c7:: with SMTP id i7mr1393678uap.109.1576678235726; 
 Wed, 18 Dec 2019 06:10:35 -0800 (PST)
MIME-Version: 1.0
References: <20191217135539.17157-1-info@metux.net>
In-Reply-To: <20191217135539.17157-1-info@metux.net>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 18 Dec 2019 23:09:59 +0900
X-Gmail-Original-Message-ID: <CAK7LNASVmO3i3BVSHHLAE3p10E5+POhBn9m9HpYqG5VeR1_NAw@mail.gmail.com>
Message-ID: <CAK7LNASVmO3i3BVSHHLAE3p10E5+POhBn9m9HpYqG5VeR1_NAw@mail.gmail.com>
Subject: Re: [PATCH v2] scripts: package: mkdebian: add missing rsync
 dependency
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_061107_273767_4053E721 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.90 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: "open list:SIFIVE DRIVERS" <linux-riscv@lists.infradead.org>,
 Michal Marek <michal.lkml@markovi.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 10:56 PM Enrico Weigelt, metux IT consult
<info@metux.net> wrote:
>
> We've missed the dependency to rsync, so build fails on
> minimal containers.
>
> Fixes: 59b2bd05f5f4 ("kbuild: add 'headers' target to build up uapi headers in usr/include")
> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---

Applied to linux-kbuild .Thanks.

>  scripts/package/mkdebian | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/scripts/package/mkdebian b/scripts/package/mkdebian
> index e0750b70453f..7c230016b08d 100755
> --- a/scripts/package/mkdebian
> +++ b/scripts/package/mkdebian
> @@ -174,7 +174,7 @@ Source: $sourcename
>  Section: kernel
>  Priority: optional
>  Maintainer: $maintainer
> -Build-Depends: bc, kmod, cpio, bison, flex | flex:native $extra_build_depends
> +Build-Depends: bc, rsync, kmod, cpio, bison, flex | flex:native $extra_build_depends
>  Homepage: http://www.kernel.org/
>
>  Package: $packagename
> --
> 2.11.0
>


-- 
Best Regards
Masahiro Yamada

