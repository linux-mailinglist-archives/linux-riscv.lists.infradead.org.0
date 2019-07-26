Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B557730D
	for <lists+linux-riscv@lfdr.de>; Fri, 26 Jul 2019 22:56:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UlkGY9cSL7OZV1JbP1fGZg/nzJ9eIbJY3+dDd4G3EW4=; b=T1k1sx0guUSI5c
	UrUGnWcFQ+rS7j5XOrUPwU35t0NSLA/XMj+ZSqVnQyXquvrerNt6DlUGTLuRiLqs2DHMr/Y+Z6RUb
	/E64zLPMRuUXg6bSuwDcJM89qHlnUDUIGKtoMp84btfyx1jfXraXSPzFglolXUot5xak9ee3Nqd4r
	+wXF+tM+wtkEbcoF8UOjdWpUFRZHyZHbqz1scLMvmDzYr9Ene96sBFp+uB+SfkWBlsdcAaiqf/C7s
	9BIzLCWyGeU31Pzt3X9HL0VpiTbyrCD3tPQcsydGBW7x93k7/q3YJbRsyvfbM5d4IffSjAA9aInpn
	PAYsoFXQhARkpKZzD2CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr7GA-00082O-0I; Fri, 26 Jul 2019 20:56:14 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr7G6-00080U-AU
 for linux-riscv@lists.infradead.org; Fri, 26 Jul 2019 20:56:11 +0000
Received: by mail-io1-xd44.google.com with SMTP id q22so107492205iog.4
 for <linux-riscv@lists.infradead.org>; Fri, 26 Jul 2019 13:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=G6aDD/GD+kvdk612rfOXYa0fz0XwDpj5Lf+HHPLV2pE=;
 b=K/qPJAaj3Z8y8FVZ5XbVN1aSvyEsVXhmMWRQWBADXEWQcg1tqYf7IFML/8BubJLH3J
 Ghmux6TwEU5FUK6ZIbChZ+OXlvJONw8Vo/IMDTk/U4P5C8XrU0ileTNjjkUXRSKhPTo+
 O8qDBCARxsZQ+Du522IvgSolVDop4HI90FEyeJbEoMY1JTrZg3oTO9/PixW7auI1dgiM
 scvowKq/rkA8ZpnbrBjYzx3jDsjy1OGp0wxKC4+M2fyeJZVbYSDq+VybagCDELYW1TOe
 BuJptbCtgMvmW7JB4qyuUp81AK+HtqFNX/mY/z7DumSYn1wREXlHL3xOpwtC0bQai47d
 kNPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=G6aDD/GD+kvdk612rfOXYa0fz0XwDpj5Lf+HHPLV2pE=;
 b=Dp1xZdLkih02+6JZHh4YMFw1ubLFG0HOyosfoAQ9lSMqWW9QyaErFKnCG466xzMmms
 oJiDO5DXXpTfssLcIjAGlsdZ+xuNZ4PjY7CMxKs3SRrZqyKjn9V8qDd/KBK1qFYv7zOw
 l3UqU6MzlqjLfPZLuoeEOmhfqbgsZBA/jfQ5rNk8KBH6hv5/iFef6BGdzFhlDGUztDqk
 KDVdcrKNIuD9V7EmhAFOnXDfBzvRDjBnJmvr4DAvFtwCOheMDGkUA4cSvE2CqhJ1t2aQ
 3viQZCQYdd/m0vuD2tPw59Gqf8+zir3ws8mW4U9qAil3mAYDmGDhtc2OivjDU0yFhNVV
 gGuQ==
X-Gm-Message-State: APjAAAUUcteN7+MF1k+Z8tqvXRXCdIV0zl7P7cmCYNfUeMcv1AM3QwE8
 9m9x7U5ocGM5SzdTao/Kw5MZjg==
X-Google-Smtp-Source: APXvYqxvy9zWYI4Uw+gXM/d3bwjM8f/ZAAfYwvNmt0CtQtGvWox+Z8mIehOzitQ6K7v8DCeDwIIadg==
X-Received: by 2002:a02:8816:: with SMTP id r22mr25863672jai.60.1564174569381; 
 Fri, 26 Jul 2019 13:56:09 -0700 (PDT)
Received: from localhost (67-0-24-96.albq.qwest.net. [67.0.24.96])
 by smtp.gmail.com with ESMTPSA id b8sm44104247ioj.16.2019.07.26.13.56.08
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 13:56:08 -0700 (PDT)
Date: Fri, 26 Jul 2019 13:56:07 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Wang Xiayang <xywang.sjtu@sjtu.edu.cn>
Subject: Re: [PATCH] pwm: avoid disabling clk twice
In-Reply-To: <20190726043549.18034-1-xywang.sjtu@sjtu.edu.cn>
Message-ID: <alpine.DEB.2.21.9999.1907261353330.14300@viisi.sifive.com>
References: <20190726043549.18034-1-xywang.sjtu@sjtu.edu.cn>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_135610_372192_B2DA8701 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org, palmer@sifive.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 26 Jul 2019, Wang Xiayang wrote:

> Similar to commit 63fd4b94b948 ("serial: imx: fix error handling
> in console_setup"), as ddata->clk has been explicitly disabled two
> lines above, it should avoid being disabled for the second time.
> clk_unprepare() suits here better.
> 
> Signed-off-by: Wang Xiayang <xywang.sjtu@sjtu.edu.cn>

The patch looks reasonable, but it needs to be sent to other people and 
mailing lists.

Running "scripts/get_maintainer.pl -f drivers/pwm/pwm-sifive.c" shows:

Thierry Reding <thierry.reding@gmail.com> (maintainer:PWM SUBSYSTEM)
Palmer Dabbelt <palmer@sifive.com> (supporter:SIFIVE DRIVERS)
Paul Walmsley <paul.walmsley@sifive.com> (supporter:SIFIVE DRIVERS)
linux-pwm@vger.kernel.org (open list:PWM SUBSYSTEM)
linux-riscv@lists.infradead.org (open list:SIFIVE DRIVERS)
linux-kernel@vger.kernel.org (open list)

Thus Thierry will ultimately be the one responsible for merging this, and 
linux-pwm@ needs to be cc'ed as well.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
