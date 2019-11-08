Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61573F428B
	for <lists+linux-riscv@lfdr.de>; Fri,  8 Nov 2019 09:51:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0lvIKMOwZqH0FbneBJKUIc5ziQ5AJWbKU5/qYEGRoaU=; b=FB+8s2C6NKN8Fc
	auosTJpimumkav88W+9+MW3CwiDBd7GFYFJPUzyIqPTME284MdGbcMjomtwZJ/43VWWNTG+lXD4Dt
	tog0XAjQ6no47w/duhzuvB6ry6xECfMXnOwv88J50HPyoxbujTS6VHF74BWFqEk338ALRQwnIYrXs
	S7tcvjad9hCDqdOkWbNt+C52O0nbi8acFaexAVNzfGQJMB8hb+HO9k/vfZtxNt/J1zshLFRHcvBDN
	+De2wqcYTmGShjAmx8s10/P1l8XAjS94i+qUiq66gmC27+9ygS8AoAum2kJXUI7xOmWBejjf16Ev1
	t6qUhqSfL6dAf/wWdWTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSzyv-0000dN-9Y; Fri, 08 Nov 2019 08:51:01 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSzyr-0000cV-9D
 for linux-riscv@lists.infradead.org; Fri, 08 Nov 2019 08:50:59 +0000
Received: by mail-ot1-x341.google.com with SMTP id d5so4570300otp.4
 for <linux-riscv@lists.infradead.org>; Fri, 08 Nov 2019 00:50:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S85cv+dFRN5SsgvHSORQbdSIxYwn0oEGmdvNGbJesco=;
 b=T4/hkniHISxhKLviDVpNOrLIS3abyDnRgQR27nInQ39mJfNwJk6aSi5flcSy0a8nff
 3EVQJqEWux4tnPaNvTFjGU804fkSgk03TkvJIB91ggXPxGE/QseehJlvvX3Wdh6LZwjp
 1+s29e2NxGZKY/UG6nJYehPsF14x3szH0Mc2OGM37sGXTYhBlQcBo9W6F1NLNYH+YRXk
 4aNgnF7AL3sbmok1Mh3XwPia/IoVoiPw/0g9GsSVOW7NaC/Psni09+17MkYXZWKAiDUv
 GkR2xO3Ivjq9DY8E6c/kirvfYFyu0j5XZmUyO3abzIhBmN5WSAa3e2eNqgXn1LoTnLsg
 2kEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S85cv+dFRN5SsgvHSORQbdSIxYwn0oEGmdvNGbJesco=;
 b=PpxF+Hj1oN6ERyPOvLTv5N02Ua1etWdG9nHJdExBerJgaZEClpmIS9QKEZcQUFENm+
 5oBk4OYB2XPp4/qcd2IDY/4xHBgrmF5MrMJo5zA5eSgKUwq3llb+gGQCeVXOr87vHfkB
 CgSyjdPMuoaFm0EjI6DUAOJucRj/kvVmpBl0tieWWGioVBz4JtUpwXxWqczgdXJQToZv
 RD6vtjSchDSAH5crUy6HX1jIG7wuqrHIO+smKrSQ4I5S3+AhE3b0R6IwMmqkesebNJ44
 7rGNR+QQUVAa1FxQ/YBXOePcTNDuT4SF/9nKp5MFjiUUKlp4kPfHCV4JUv7HzME4IWqz
 Q/rg==
X-Gm-Message-State: APjAAAWtv6n/k8O/XgS830vEm0pdz0xJp4Y4SPcmz1DZ6KeRv+O+qV06
 VaHtHyI1SLBvk584Bn212Rvx4kWY7TVXN9roCjKMog==
X-Google-Smtp-Source: APXvYqzvFWycGq+rgNWjzjUl8DaEflPl0cye1A5IDVDIfB+L9OLXtWK4iNaOX6xH2U0TJB9gdbn8KheZwxW1Z0UDGy4=
X-Received: by 2002:a05:6830:2106:: with SMTP id
 i6mr2362173otc.75.1573203055439; 
 Fri, 08 Nov 2019 00:50:55 -0800 (PST)
MIME-Version: 1.0
References: <1572920412-15661-1-git-send-email-zong.li@sifive.com>
 <20191108072523.GA20338@infradead.org>
In-Reply-To: <20191108072523.GA20338@infradead.org>
From: Zong Li <zong.li@sifive.com>
Date: Fri, 8 Nov 2019 16:50:44 +0800
Message-ID: <CANXhq0qr-hsaJUaQ_nToyMv2sJHDUnHrernqYFV1Q90Uek6XxQ@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: Use PMD_SIZE to repalce PTE_PARENT_SIZE
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_005057_451225_3CF9963C 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 3:25 PM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Mon, Nov 04, 2019 at 06:20:12PM -0800, Zong Li wrote:
> >       uintptr_t map_size = PAGE_SIZE;
> >
> > -     /* Upgrade to PMD/PGDIR mappings whenever possible */
> > -     if (!(base & (PTE_PARENT_SIZE - 1)) &&
> > -         !(size & (PTE_PARENT_SIZE - 1)))
> > -             map_size = PTE_PARENT_SIZE;
> > +     /* Upgrade to PMD_SIZE mappings whenever possible */
> > +     if (!(base & (PMD_SIZE - 1)) &&
> > +         !(size & (PMD_SIZE - 1)))
> > +             map_size = PMD_SIZE;
>
> The check easily fits onto a single line now.  Also the map_size
> variable is rather pointless.  Why not:
>
>         if ((base & (PMD_SIZE - 1) || (size & (PMD_SIZE - 1)))
>                 return PAGE_SIZE;
>         return PMD_SIZE;

Yes, Use positive representation is more clear to me. Change it in next version.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
