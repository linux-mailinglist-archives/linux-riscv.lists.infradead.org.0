Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F22BED5F
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Apr 2019 01:40:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=Pd5dQQgjyKAwrzcjWFkpFxR29JKj7AkvV7xkOrXY5AQ=; b=IQ9cxdO85IYFVPCf1jfmjuJQx
	QPw/RjbF94WQOXO1dQ4s70iTyASoWKm64s+jdGv+7VF6k8sfIQVGew3zyFRo4NGw3X+AylbvVOk1g
	fsov/v/naxsy/TEdrTXM7zyD+xHq3JL4/MHzBOX0HZxhwniEGTNFelfem95+drIwKns4fSMtsPbIu
	BleiKuIh6iIAQ753nSiJgUItjjcPkdyH3qBEjbawcyxX4X+mInNC1jDSTY50LT9xpzJwvXNPKOX1S
	lQbZ7YdlLu4/tKQiiWsheG2VfU9wfvMlRK83AQ8cMp4IwX1cRyJxOxZEhxyU1nl95A9aLgHYqige9
	JabB/rroQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLFt1-00088I-ID; Mon, 29 Apr 2019 23:40:39 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLFsy-00087h-2H
 for linux-riscv@lists.infradead.org; Mon, 29 Apr 2019 23:40:37 +0000
Received: by mail-pg1-x542.google.com with SMTP id 85so5928451pgc.3
 for <linux-riscv@lists.infradead.org>; Mon, 29 Apr 2019 16:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=kQkHemo9SnkEIk+eKPM3YMOa8r+5exMM2K2AltP76MQ=;
 b=SkYBydP71KoumEQnhUbbZdXhgwcMk0aj3uSULj/xgwBK735SIjs14CRyw7aHF3S4EC
 rgUkMKtIfuvgya4uGY+jtX7jHi+bzWG76phfrozylymojMybq9I/fatyUgQ4pZEJLkrm
 KGp3EAV6d2/5np6dKA6iVjKp5dAxmjuDLc4wQsvHcuvBClLPgiJwdfMR+yHmJ4qhJvyc
 cSWkxoodvEd5Q97aJr1G8uBQ9aocP5mXc/Y1ztIJ/bdPZdiEfmPQE7zwmf6d8bJzVDTA
 wulWHeCxnrdyyZUXbGacKSBnM/8+7W7SUzImZ+b9Gi4ghZY/GdtNBKyAncX61Z/w/Tao
 Qf9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=kQkHemo9SnkEIk+eKPM3YMOa8r+5exMM2K2AltP76MQ=;
 b=rZhXV+CsdJ4VSGHpW6kFHVEYFamQkZQhx5HpGNfbyJRHCyUNHKIn7nWzUMdBQsAp/2
 +MqoW9uEnqbjSnNcoUV0WywPB3L0IRwJ5slx0NpFrqTTvo0/znWjIBzeiPtK08OUXDME
 bYq2y6l9d/m1fEOm3GHsM15pUorG123FVMvFpAtU5dEEmnKuz4yLrJ0dy+7io3vBKuk/
 G+zzvqdyy/JNlaMqaiPzrdxlngMGl46A5PXGyjclXV/WovSQwaCLgc/FKR6JPBWxm/pO
 Ks+D0DA6ZOY2XlQ+1yGRqQFPw2RD6DcySsCcktEv3nzS5R3ShRHoA6tu+XrGn1XVRb+J
 8Zsw==
X-Gm-Message-State: APjAAAUnkQm6sb65PLJcUdN3TJ6nuWUZAtEqkOn4HnGThLLXp0KXKq+H
 /9QZP+DJeE33fqnmWvls9s2ZPQ==
X-Google-Smtp-Source: APXvYqxlYjLsc5ty1cws8jR/tQPvjy1C0IvyXfQ9MArN7jjwERLNMdl07fbZFel9nF8CO6PlkziXlw==
X-Received: by 2002:a63:c746:: with SMTP id v6mr62692430pgg.401.1556581235393; 
 Mon, 29 Apr 2019 16:40:35 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id x6sm14221715pfm.114.2019.04.29.16.40.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 29 Apr 2019 16:40:34 -0700 (PDT)
Date: Mon, 29 Apr 2019 16:40:34 -0700 (PDT)
X-Google-Original-Date: Mon, 29 Apr 2019 16:35:53 PDT (-0700)
Subject: Re: [PATCH] riscv: vdso: drop unnecessary cc-ldoption
In-Reply-To: <20190424062020.GA3902@infradead.org>
From: Palmer Dabbelt <palmer@sifive.com>
To: ndesaulniers@google.com, Christoph Hellwig <hch@infradead.org>
Message-ID: <mhng-4ffee2ab-ecda-4776-991a-adeb7d0b8c79@palmer-si-x1e>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_164036_179306_B3842997 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aou@eecs.berkeley.edu, Arnd Bergmann <arnd@arndb.de>,
 clang-built-linux@googlegroups.com, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, yamada.masahiro@socionext.com,
 linux-riscv@lists.infradead.org, aurelien@aurel32.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 23 Apr 2019 23:20:20 PDT (-0700), Christoph Hellwig wrote:
> On Tue, Apr 23, 2019 at 02:22:53PM -0700, Nick Desaulniers wrote:
>> Towards the goal of removing cc-ldoption, it seems that --hash-style=
>> was added to binutils 2.17.50.0.2 in 2006. The minimal required version
>> of binutils for the kernel according to
>> Documentation/process/changes.rst is 2.20.
>
> Looks good,
>
> Reviewed-by: Christoph Hellwig <hch@lst.de>

Thanks!  This in on for-next.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
