Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1604A14C876
	for <lists+linux-riscv@lfdr.de>; Wed, 29 Jan 2020 11:02:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NMxi53oQhLqzBIhRfkCNH6OHdDETWpd2dLEfkOHx2Uc=; b=RxZ6E97aHRsD0Y10PvUFjk/c3
	GORo0kMzN7GMiNaY5/QrvgKKn/mt/ifTOqH85Hs1MHgGBlqc8HwoxcDhFd6b79UrjzGknbuNigMGw
	AyfdL82+qUxZeIGglngfxwXuSA53BTo/EY6l1PDDqgME1JRQ2+9/K806n3qOmhS+0GhO+XJBDgQdJ
	tBZyX1jqi4Es+mlSGCT4DQpLUZeiL5jSsB7jVP4LdyyxLwBugfLyZtryl+3pqPHO7X6Cnf0UpMp8I
	CIWE+o15ypleBZ8A6NwEHs8gHgnH3EVirDkdbAcJrKSGOlro4Uxz7RbZuHPfU98gKXZEXQUaYoKUH
	EGEPKKDTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwkBO-0003Jg-6Y; Wed, 29 Jan 2020 10:02:50 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwkBK-0003JC-TX
 for linux-riscv@lists.infradead.org; Wed, 29 Jan 2020 10:02:48 +0000
Received: by mail-lj1-x243.google.com with SMTP id x7so17720859ljc.1
 for <linux-riscv@lists.infradead.org>; Wed, 29 Jan 2020 02:02:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NMxi53oQhLqzBIhRfkCNH6OHdDETWpd2dLEfkOHx2Uc=;
 b=Oi4ghENtW6WcAZoWHyXkSoZL6u7K78YhV9BGUbXfC6h6iBLme0/mQHB5Ff2rNV0E6B
 On7RkAea/ORZqEDHsxpTTRJ4e8w4Dr/ZSGZ7EuaRWqhlipZW+SzN7agWqJvr30hjw0mr
 maGoxAwSH46ouE/d+AHJD5+unObzitFq5uiQ5dTuteai1qfGVsL1Gdvd7/eWX0HdFQfY
 XjtoTXtzE0WnVZ/WjTsHYubHx5SVEI0eHDsG4NvncsMPBujwg7rToS4rRJfF0yOv0Jp/
 YPoUAOBGsgvdON/p45jmIfTn8+EifTTXAmFTcc8LILl5rDhfg9yLO4+GcHBkGZGHHpVp
 wZYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NMxi53oQhLqzBIhRfkCNH6OHdDETWpd2dLEfkOHx2Uc=;
 b=OsrdUtT54WZJCM7tKEY4GAk7/ve79L4k9Gr0sPbd12lNqNA9ZXEnZrOcZIxRfD51z5
 tsOLL53qgrN6YiRQaEOfdmQO2wHCvbErwSjqTJR7MrgrO94l0/fQbM3e/g2pP+SmGC5W
 g/cb6Znj4QfysF+hY0AnOZB5E+t/1fd6kiTypXIidf2XaENGszXc7mBkQUOfrTF9B4ua
 f/ex8otZaOp9myT2UaRcgoUUtk9lBd42+Xd+JrWl2mzNtljwDorgdh0sl3gEBLbE7nJf
 eXAGsXLULUaStEKSNNWfmR2NwGedwhV4RjGFN3Ac5XWFeR0FPYuTqn+0AuEvpWcqepzP
 DCxg==
X-Gm-Message-State: APjAAAV1OreyzgZufuPO3KoY/m7nBgOgYkOvhzMpmw3DYpJEGw1TcFvY
 VL4QsvPF1qpnqIWPERHQGqlSEnWdQxf9As3YQObTug/MVSs=
X-Google-Smtp-Source: APXvYqwETGQUBQ9evnWRAidnF08QHwkw7wCuB5Ih+rKtEwQzqb/TOP2aY3kVf4fXyMdZkgiY/Zpkwkp5E9sI99kmEjg=
X-Received: by 2002:a2e:81c3:: with SMTP id s3mr15670925ljg.168.1580292163302; 
 Wed, 29 Jan 2020 02:02:43 -0800 (PST)
MIME-Version: 1.0
References: <1580189061-14091-1-git-send-email-yash.shah@sifive.com>
 <ecb0e9404a3f6256a7ba1fe48b5a1471@kernel.org>
In-Reply-To: <ecb0e9404a3f6256a7ba1fe48b5a1471@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 Jan 2020 11:02:32 +0100
Message-ID: <CACRpkdaQWB6toqVoPZCO=pfnMBFW+hXc027azu92NdOMqR_qNg@mail.gmail.com>
Subject: Re: [PATCH] gpio/sifive: fix static checker warning
To: Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_020246_963487_29461F45 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Atish Patra <atish.patra@wdc.com>, "Wesley W. Terpstra" <wesley@sifive.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Yash Shah <yash.shah@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Sachin Ghadi <sachin.ghadi@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jan 28, 2020 at 2:21 PM Marc Zyngier <maz@kernel.org> wrote:

> Linus, do you want me to queue this via the irqchip tree (given that
> it is where the original bug came from)? Or would you rather take it?

I can take it, I just need to get my own changes for GPIO in first
so I'll apply this past v5.6-rc1.

Yours,
Linus Walleij

