Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82091413B3
	for <lists+linux-riscv@lfdr.de>; Fri, 17 Jan 2020 22:52:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zjQSft/7NYSlsFJpIJXa+QqqnK9LdZDneos7vXG6e8U=; b=p6e45UO0ePrHPj4V9pdBshxKT
	yZl5u1scqJDXsfZUvqWGvzZSeZ9d3a9ysKlPE5nfBHoSK/aDvrD+FTKxpOtIrgJK6iLZD8/hNUC0W
	btG+Fr7hPJ8GgcTGW4Xp3tVzwfuVUZOjg47F1aThgcGm6oSGU0cgL7x9wkJYfWGR5TRufI6dh+p+D
	uVGoApbY/ndhZ8x8bIGaNUEv8EXhe4FZcyx3F3oXY+j6yHYvscC2fSgYnO9qwaCxYpferFJfcJvC3
	5R6NfOzqifYzUGkGpLJ+Th5H4dLsqvY+SG1aAug1T3vfdksVugyvkLTPH/esKouK7vUkz1bcxGzSH
	W6qh+Hkbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isZXW-0001QZ-9i; Fri, 17 Jan 2020 21:52:26 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isZXS-0001PX-Ri
 for linux-riscv@lists.infradead.org; Fri, 17 Jan 2020 21:52:24 +0000
Received: by mail-io1-xd41.google.com with SMTP id t26so27647488ioi.13
 for <linux-riscv@lists.infradead.org>; Fri, 17 Jan 2020 13:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=zjQSft/7NYSlsFJpIJXa+QqqnK9LdZDneos7vXG6e8U=;
 b=DyEq/hO8s4RZ+2iZ2TdF0sCag4usxI3IV+LW66SjqfJX3rwnC1ZGJHJSZhOGhZmvAK
 kQwTRgq6NW+MozpJR4MRfVmSO/wMDbZry0xANexqWvW8vJeElOXYWTnu/3CKw9eb6+RE
 aCO9SoMkbQCVq4bE/Kch+kDMFy54kHoSbNAkR4u9NrxejyV9dVVKI0Rx4DLt+awesfih
 RrVEu/bcSG2pJjyx0uCjii6LOF5hAIINaP82K+kDr3NTSycSJZ2U/iZP9CVchB0dgCf8
 HleBXwjXI32smI1oNmSWJxbIsEB9rwNVFjKn2ExvJibhuZLFTKFfIqNLg6e63yxxfTvH
 sLCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=zjQSft/7NYSlsFJpIJXa+QqqnK9LdZDneos7vXG6e8U=;
 b=M3GwLc7z9k4Z04h+Optg+P9EpkDbqulSKtUURi0FyBvHSlakjGNk2OxDR7JCbU7ZaU
 JbfZ2RBWFZcS6nOtfFgzp+ULg/KIl6haC+fg/DIQYxXBu00ftN9VWjtd6AiVDpVGjoGR
 +TAA4SlqbJBv++mzqr+UqEkETjL57mLRUAGPJw8Kzp4cTsZtyfOPEfDd7ioET64ED266
 2fAeVFvyXKDth21N32iOdHfoh78saP0Ic2wXo8oeUZSM31pgz+2S4zqOy1xVReBvm4ON
 St9axWu6P3gbICUlF7WgxewdXJPOzJ4XuHpLM1hEaU5xm31ennhVrhMTtoBKGrMlV7M1
 7TyA==
X-Gm-Message-State: APjAAAVdtNLnUBLw3mrk1N/bQnDCFSy7EFmLDPB6dI8heEZqLv/g491H
 n++07XwXlP31AoNF7C+bo4+jsg==
X-Google-Smtp-Source: APXvYqyOI2ac0khuK6ygC3i3ZJ0K7jAaLTP91Od5vfsxqrMwyAW8rIVzKYRGxYrOiKkArJC9tu10wA==
X-Received: by 2002:a05:6638:102:: with SMTP id
 x2mr34374608jao.71.1579297941757; 
 Fri, 17 Jan 2020 13:52:21 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id y62sm8243344ilk.32.2020.01.17.13.52.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 13:52:21 -0800 (PST)
Date: Fri, 17 Jan 2020 13:52:19 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Ilie Halip <ilie.halip@gmail.com>
Subject: Re: [PATCH] riscv: delete temporary files
In-Reply-To: <20200115113243.23096-1-ilie.halip@gmail.com>
Message-ID: <alpine.DEB.2.21.9999.2001171352080.98477@viisi.sifive.com>
References: <20200115113243.23096-1-ilie.halip@gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_135223_106260_8D17312F 
X-CRM114-Status: UNSURE (   7.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 15 Jan 2020, Ilie Halip wrote:

> Temporary files used in the VDSO build process linger on even after make
> mrproper: vdso-dummy.o.tmp, vdso.so.dbg.tmp.
> 
> Delete them once they're no longer needed.
> 
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>

Thanks, queued for v5.5-rc.


- Paul

