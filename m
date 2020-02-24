Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AAE16B315
	for <lists+linux-riscv@lfdr.de>; Mon, 24 Feb 2020 22:47:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iNtRJwz9wlMRsiahuz/KF1yWpwEFtdXT3kziG8T5g6o=; b=gNOESGRzSWrxgG9l1CXdLNM++
	zFJZLNPA1he5izeyeFKMc0pbZUklBygrJ2wb7knfqlZXFT3ScJ5PyNAWD2q37MEMWY/9F3T6I1YZk
	7S4S0FUVoMFfndA9tm5zycNUD7VDTucNgogmCWj48fpSs0PJGIJvFoviIvJUloxObRT6FJfyD5CAu
	VM9yKudLOEoNfSZdjML3O0+9RziuOlRwkAtBjnK+qw5ZbtcqOCG7u2SolPG2LfRqAbMcMisWKr0Zv
	4DI7eFGOqggToJzexLHJTwQOOxbRyx0A81uGZ95VAfOkA5vSIRFHhdZskLAIJQeaSfphc3XtL1GX1
	jPEzlPz0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6LZH-0001Oy-7X; Mon, 24 Feb 2020 21:47:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6LZE-0001OI-8T
 for linux-riscv@lists.infradead.org; Mon, 24 Feb 2020 21:47:09 +0000
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1B7DE21927
 for <linux-riscv@lists.infradead.org>; Mon, 24 Feb 2020 21:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582580827;
 bh=iNtRJwz9wlMRsiahuz/KF1yWpwEFtdXT3kziG8T5g6o=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=WMg+aYz1pqfBf40N7HwxHgQpeCL0z5WsTj4AbdBOu5Qf4JPsNW4o/ftranmD03CLS
 3aQ4zGauKMZhe6n6sPY8dsd/Lv4qk4vcsHr8kdnVV5e98E3ApwKd3g2YjZ2Vc86bsS
 3N4Gd+iAZnwNydBCjMv7weJyQcdqMV8pTKKZVIPg=
Received: by mail-lf1-f48.google.com with SMTP id n30so7145663lfh.6
 for <linux-riscv@lists.infradead.org>; Mon, 24 Feb 2020 13:47:07 -0800 (PST)
X-Gm-Message-State: APjAAAVdQmdplLIJELymUwzSrP3Qqjq82btoyhfuF5GLo9QFh7JPTuFw
 UvRrLgbIdci+CJgFvOmlfcxEohsUw6UldmJliZ0=
X-Google-Smtp-Source: APXvYqzaaG/6z/a+I+9wcWjT9K03hUBnD02phL7AqptSQe39nY1F/hXEGG8n2WvCSqtYN3l8Vad/TDDs2i+ojPEZagA=
X-Received: by 2002:ac2:5682:: with SMTP id 2mr12461494lfr.138.1582580825266; 
 Mon, 24 Feb 2020 13:47:05 -0800 (PST)
MIME-Version: 1.0
References: <20200220041608.30289-1-lukenels@cs.washington.edu>
In-Reply-To: <20200220041608.30289-1-lukenels@cs.washington.edu>
From: Song Liu <song@kernel.org>
Date: Mon, 24 Feb 2020 13:46:54 -0800
X-Gmail-Original-Message-ID: <CAPhsuW6c9g9QRKZWVLXZN27SKOxMBM2tPV3F+QM5sb6mtvseow@mail.gmail.com>
Message-ID: <CAPhsuW6c9g9QRKZWVLXZN27SKOxMBM2tPV3F+QM5sb6mtvseow@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next] RV32G eBPF JIT
To: Luke Nelson <lukenels@cs.washington.edu>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_134708_321730_3F35A3AB 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Borkmann <daniel@iogearbox.net>, Jiong Wang <jiong.wang@netronome.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, linux-riscv@lists.infradead.org,
 open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Yonghong Song <yhs@fb.com>, bpf <bpf@vger.kernel.org>,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>,
 Xi Wang <xi.wang@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 8:21 PM Luke Nelson <lukenels@cs.washington.edu> wrote:
>
> This is an eBPF JIT for RV32G, adapted from the JIT for RV64G and
> the 32-bit ARM JIT.

I found a lot of common code between RV32G and RV64G. Can we move
these code into a header file?

Thanks,
Song

