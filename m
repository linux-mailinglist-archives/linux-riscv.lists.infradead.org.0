Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5CF5122148
	for <lists+linux-riscv@lfdr.de>; Tue, 17 Dec 2019 02:10:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EfPkJ1K6br0RIoAN8GGT4R0vF2+h8CtL4curYlOC5SQ=; b=F5uXHEr/6F2z75aAk+zdApzDf
	XLgGUSE8pdirfwIuYD0fDNsEvx6Pv1FHYFa7HdafGMgG0MqcRLvVgx2+MtKfybCaLHklmvwgUMC+g
	523kLZvhfovrZrRG2iAkfYPXuVvglHIYEdQ2zoKuNcaW97+yZBZ5J9fM1zLdpFaHedVBl/uiN77M3
	laGMYwCPZt6KfdS3SZqZWcaao/NhxoCLvMxNnc5AUVjXXuXjPMfssdDqK91bxAJDxByFJJhI7WPw7
	0HLPl7Ly68pRzDheGdmgAa0HF0+Iq4bv7TTHxZl01TCeGsANWP6XOfaxt71gxSZW0pzAtFsvqB87/
	dmI3bao4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih1Nr-0000AO-Mr; Tue, 17 Dec 2019 01:10:43 +0000
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih1No-00009g-QD
 for linux-riscv@lists.infradead.org; Tue, 17 Dec 2019 01:10:42 +0000
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com
 [209.85.217.52]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id xBH1ALYi003795
 for <linux-riscv@lists.infradead.org>; Tue, 17 Dec 2019 10:10:22 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com xBH1ALYi003795
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1576545022;
 bh=EfPkJ1K6br0RIoAN8GGT4R0vF2+h8CtL4curYlOC5SQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=T5HUX7yccL+KyA+78j7r/t6p8sVwkVPF8EnE3pud8kBYKZx6+v3Fx7Kr37aQCw8rr
 jSwcemXZEXQUzvFyBYdnZErbK3TaFarfk6zMUNvAMclsAIGdvuyR9ilgRcDN6kYB4A
 rTDCiU2R399Y1wuQi5g/VvC4tC0iY/Kpufg0PR69AuRJnH3P9g0F0zbFPDgmhE0QO5
 HkSJ8EqzPFHu2UvQwDoRrJ2lvyQbB4Pu/ZCOFKRsJg3u0gXAethyKByAk56QR9YabP
 g2MwyUYHyLLmovd/elJAAa2ZL7RD9LOl55lrGpcgJ6k29QsP2L+KUuh909xXAlBefn
 v6hLWt4gUKjtQ==
X-Nifty-SrcIP: [209.85.217.52]
Received: by mail-vs1-f52.google.com with SMTP id v12so1420722vsv.5
 for <linux-riscv@lists.infradead.org>; Mon, 16 Dec 2019 17:10:21 -0800 (PST)
X-Gm-Message-State: APjAAAWyPnjNiD7lCDV2KEPJaj2a+5wbrD7ET2skyIBks/58dq+/X6md
 pDLh1MPy3wxsC7GG7CbpkHv527l/c8ytMzYkcPc=
X-Google-Smtp-Source: APXvYqwkIN9Lvwlmkp2stv+JiCv4A9+lBjvUCThtm2ZkD11UN3CKjhGlaOiDvW6XmlUNhWQtm79VZMv0NB9zgNtp9yE=
X-Received: by 2002:a67:30c3:: with SMTP id w186mr1240283vsw.179.1576545020751; 
 Mon, 16 Dec 2019 17:10:20 -0800 (PST)
MIME-Version: 1.0
References: <20191216200719.30479-1-info@metux.net>
In-Reply-To: <20191216200719.30479-1-info@metux.net>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 17 Dec 2019 10:09:44 +0900
X-Gmail-Original-Message-ID: <CAK7LNASxcne9kryTsW2+7TQxuH+tp4Z4OT+1BjUHSE2Cfp_qxA@mail.gmail.com>
Message-ID: <CAK7LNASxcne9kryTsW2+7TQxuH+tp4Z4OT+1BjUHSE2Cfp_qxA@mail.gmail.com>
Subject: Re: [PATCH] scripts: package: mkdebian: add missing rsync dependency
To: "Enrico Weigelt, metux IT consult" <info@metux.net>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_171041_080374_9743C04F 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-riscv@lists.infradead.org, Michal Marek <michal.lkml@markovi.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Dec 17, 2019 at 5:08 AM Enrico Weigelt, metux IT consult
<info@metux.net> wrote:
>
> We've missed the dependency to rsync, so build fails on
> minimal containers.

Ah, right.

Did it fail in headers_install?

If so, I will add this tag.

Fixes: 59b2bd05f5f4 ("kbuild: add 'headers' target to build up uapi
headers in usr/include")





> Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
> ---
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

