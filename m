Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1278A089F
	for <lists+linux-riscv@lfdr.de>; Wed, 28 Aug 2019 19:36:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yA9xdXUAHz4XJnU+oRhBnf8zUR9GfDu00Qk7wET54Uc=; b=mxTyzJmjM5cSqB
	Evu0bTZ7bh7decE/bTDvbHNE6A+1HfECPlizFy364+veGCLuV+JwgWWjJaIu7emPJHccJEbqIWk17
	+d7C7cLiAjwo+V7shyXGxkftbdb+ubxuItHzRZ0LnjWzTLaejYAg3pXNMceI47fkZYQ67Ngg0aN1E
	aoT6Kgzf+XhJr3FInPFMA7iwzgqX9irqH/QS47caw4/Bno0hDGKc11T9MF9UIJCYpjWoTOFNm+sIw
	TePcE5+C5kTL6oC8BoEI35e1EaGtJQAJu6t5/g66aBljmg0eEvCJWaPVzzVZh3CO4EzjtEegLV9+I
	tAYx4Q9GjXaT5eDyYgCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i31sL-0001cd-6H; Wed, 28 Aug 2019 17:36:53 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i31s1-0001HY-K2
 for linux-riscv@lists.infradead.org; Wed, 28 Aug 2019 17:36:35 +0000
Received: by mail-pf1-x444.google.com with SMTP id g2so267497pfq.0
 for <linux-riscv@lists.infradead.org>; Wed, 28 Aug 2019 10:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=UBNYDOQLiPHI747g3CvJSLTMKiFZvSX4+F+h+ZK0RGk=;
 b=hBpwGl91JHahbLFCmv2w1Mjzc7Oz3kRyNRNlfokM3jA96+3Z6siqSGJK3qXqEvZYXw
 209fRwW977JPTkPz9WVu94EDq8zT1usK2FPzVbiynFtN99nMvFDHeFEXObaCht1TcFgd
 4xrqVdOp6iVorPHpgxumzhQ/jyb1V//MFBv7E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=UBNYDOQLiPHI747g3CvJSLTMKiFZvSX4+F+h+ZK0RGk=;
 b=fkIsubowSQwcVnij2PcqR59NAfqb1NkKQzt0Xdvz98dY4/+7E1MDvz7jtcTuSziMtR
 5peW1LjtyhCczhjBFFe6vVAbKBqCgeSQiDC35MNZr8mxVrM2GOmr/jA9k51wuyqAKYb7
 sTZzp/e64Em1kfBkXJhhfwVnTeOGvwvsJNJnp1CBPQr8Q6wYe1eenBQb4i5SUCMFkUnx
 xYcil2QByjOc7X0grsRE73+Yvych6WLR6e0a4PDxSx3g7oa+6Uw/QAXPHd9lh7IvNFsb
 awQA0IZclNRNp/nzqhFEB8ukuQXRU5KayT1mQodztjZo11RiION9D+O0rwz61AkS8LU1
 TgBA==
X-Gm-Message-State: APjAAAX1OMGpWXM+hJjdbpI+t/XfFImVcmmA2LOrcPsHLBaCWhhsBiZt
 aVwuGy4NU8XF8lnTZSBmfS17dg==
X-Google-Smtp-Source: APXvYqzwkMj0PJ8taLffJ8W2JrcvATme98GQGJX0LS7TPTRiUEPTNp5IYu8fT7uFmLx8nEqHd37GDw==
X-Received: by 2002:a17:90a:f0d8:: with SMTP id
 fa24mr5639027pjb.142.1567013792822; 
 Wed, 28 Aug 2019 10:36:32 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id m145sm5047005pfd.68.2019.08.28.10.36.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 10:36:29 -0700 (PDT)
Date: Mon, 26 Aug 2019 10:48:34 -0700
From: Kees Cook <keescook@chromium.org>
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
Message-ID: <201908261043.08510F5E66@keescook>
References: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
 <alpine.DEB.2.21.9999.1908231717550.25649@viisi.sifive.com>
 <20190826145756.GB4664@cisco>
 <CAEn-LTrtn01=fp6taBBG_QkfBtgiJyt6oUjZJOi6VN8OeXp6=g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEn-LTrtn01=fp6taBBG_QkfBtgiJyt6oUjZJOi6VN8OeXp6=g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_103634_072575_0313D67A 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.5 DATE_IN_PAST_24_48     Date: is 24 to 48 hours before Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Song Liu <songliubraving@fb.com>, Alan Kao <alankao@andestech.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, linux-kselftest@vger.kernel.org,
 linux-riscv@lists.infradead.org, Shuah Khan <shuah@kernel.org>,
 Tycho Andersen <tycho@tycho.ws>, Daniel Borkmann <daniel@iogearbox.net>,
 Yonghong Song <yhs@fb.com>, me@carlosedp.com,
 Albert Ou <aou@eecs.berkeley.edu>, Alexios Zavras <alexios.zavras@intel.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Will Drewry <wad@chromium.org>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>, netdev@vger.kernel.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>, Vincent Chen <vincentc@andestech.com>,
 bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 09:39:50AM -0700, David Abdurachmanov wrote:
> I don't have the a build with SECCOMP for the board right now, so it
> will have to wait. I just finished a new kernel (almost rc6) for Fedora,

FWIW, I don't think this should block landing the code: all the tests
fail without seccomp support. ;) So this patch is an improvement!

-- 
Kees Cook

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
