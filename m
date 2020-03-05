Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D52179F5C
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 06:40:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=THBYMEY1yGfalLtbzYiKSYkmAX5Lj+jvZpr5bKLPTp0=; b=WTFwmeO3oK2FBY
	FSxRfklvGhZYpqKWSfokhgVFUHuMvfj29/4SlI6Utaa83edh/LW2eFcMG/WUlfCupB6gar6E3u9pR
	v0w00H21VlUlk9c1QtnDQ3I9XyXC1RPhTiOsV4h525fI1EoLtQTx5d2FEyWA5cEE2HHheEF+9Yfs/
	bnb+AePhrCeCmKIhpaO8MeNTO57Y5iKY9AR+3ndOX5RTzRlLD0ZjtavcOPl58oO9AUEoKQeSBbdI+
	RhFCIrdU4Kpakvx2XCMBeMUrM6k5tJhu8LVBviQmnDf1q9WszkkGi9IfwATDihny7aZtO/cvynlQB
	wPX0R8QOSOTADPNIo80A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9jFX-0000QV-0p; Thu, 05 Mar 2020 05:40:47 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9jFT-0000PL-Lo
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 05:40:44 +0000
Received: by mail-qv1-xf42.google.com with SMTP id s15so1915494qvn.8
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 21:40:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=THBYMEY1yGfalLtbzYiKSYkmAX5Lj+jvZpr5bKLPTp0=;
 b=EZZv6hqD7ymuE6lbhHNuFocVxoT/8FJaP+Xdqv6NKFkH2BKU/X52VI7p/f0086Cvex
 A1xR+vIZOTlfJFozjl7vvRT12YHemz/A6ZbTZe9FB5ikmBiBbxI9W/q4qBGKIMHmWz9n
 tPAQnLeUfE67fU17daLSM8SxDrAaIJBF5vsbTbLMf87QcxItNe9GtxLwZFUBT1Ov/yDQ
 p4VkR/YCQzHiq7P42dX/faOLX8Rg3fb8D1jgQZ1QWXDM8BrfdVVCRui5QMvSAD9jyQCb
 xe9VDdDqfkk8qtrS/XaXQajELx7JA1AomSuxIJrZv+L+cYhrzmFyUyP3gmWH5B2Y8mko
 qbRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=THBYMEY1yGfalLtbzYiKSYkmAX5Lj+jvZpr5bKLPTp0=;
 b=RP+vS/Ek63ZXrhCBBIpmzgoiLnWcbV5ReVpD8siFw3Yx0QtuLdiO8LMAtDxrSd9cGl
 1hQRpUX1i025qcL6noYS7f6hGuCe3tgdDprNBpEzEJkhu7dnFefoIxwd3KYoiodPMw/P
 NCe6B8i6qfZo/A78Vud/tqEgVXgGNK+oT7FAcmdjYXcGweewFmc4VFnwM8WJ94gnrlzr
 bgMLXcHkE/llO9dEd8luuDahLm8Z9SywVsQb/FYUOnJU8qsaJfa9f8HNWWfy+DMV2F4r
 FnhcxCu7N8+xkffYw0yCk2CRpRocsRwKAfuk141ZrTGWT+lEt+WhQqXgRcsi3TqYO2Rj
 mPeQ==
X-Gm-Message-State: ANhLgQ37aBCLgkbnwI6AYdoI71xlevGiDfJzhZWjcIvjdTwFXCMmpSXQ
 Ph2W15llBM0cyPxw3X3dTHSp/674UPBpsCvu/ng=
X-Google-Smtp-Source: ADFU+vtfOIyH1BW9riEZRACvPgvUTdUP01Lk72U0ekfmC8baXSmHIuWMubjgSVFDnAmUEs9i1uAgEiXwdE9VRISclzc=
X-Received: by 2002:ad4:4f87:: with SMTP id em7mr4923418qvb.97.1583386840011; 
 Wed, 04 Mar 2020 21:40:40 -0800 (PST)
MIME-Version: 1.0
References: <20200305050207.4159-1-luke.r.nels@gmail.com>
In-Reply-To: <20200305050207.4159-1-luke.r.nels@gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Thu, 5 Mar 2020 06:40:28 +0100
Message-ID: <CAJ+HfNjrUxVqpBgC-WLHbZX7_7Gd-Lk7ghrmASTmaNySuXVUfg@mail.gmail.com>
Subject: Re: [PATCH bpf-next v5 0/4] eBPF JIT for RV32G
To: Luke Nelson <lukenels@cs.washington.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_214043_741219_A7C29EF4 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bjorn.topel[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Song Liu <songliubraving@fb.com>, linux-doc@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 Jakub Kicinski <kuba@kernel.org>, Andrii Nakryiko <andriin@fb.com>,
 Xi Wang <xi.wang@gmail.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Luke Nelson <luke.r.nels@gmail.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Netdev <netdev@vger.kernel.org>,
 bpf <bpf@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 5 Mar 2020 at 06:02, Luke Nelson <lukenels@cs.washington.edu> wrote=
:
>
> This series adds an eBPF JIT for 32-bit RISC-V (RV32G) to the kernel,
> adapted from the RV64 JIT and the 32-bit ARM JIT.
>

Nice work! Thanks for hanging in there!

For the series,
Acked-by: Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>
Reviewed-by: Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>

