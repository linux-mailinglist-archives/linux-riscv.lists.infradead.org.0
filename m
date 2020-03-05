Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3869817AAF8
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 17:53:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=npcqK+CtPgKOdYKCLUdw238cgWR2tdAWLJ+s57xZf+Y=; b=BAg1YANC5I9FDUB3ofedkgXKb
	QtDW6INlIOxj/dJopdyGoPbifXbop0mMTz95blDq5hDWgpm5YN8dzLBpQ9JpKfJes8Li0H+ToG283
	iMwUEHcVqq/K+Wbh9fT6auGWg3I6t3b29UkngobQfYTh28ga3H06NJXUJpoOZCKRwVKSkzR30RVS9
	TXWmkoBiqAL0gZqTgiAXMAgyciGkq7p23cLHw003c98OH+KRd2gimB6gh2gcop94yx1ZHExdT6YRg
	9em5XTqm73hzc7RcR5bg9PZpShoSn67wvW2JOOIxPwYmrNPVtu4bkuiZcono7P5FGcBmBK+IKZUcx
	spaEaaEEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9tka-00040S-N2; Thu, 05 Mar 2020 16:53:32 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9tkX-00040A-8G
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 16:53:30 +0000
Received: by mail-qv1-xf44.google.com with SMTP id fc12so2722150qvb.6
 for <linux-riscv@lists.infradead.org>; Thu, 05 Mar 2020 08:53:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=npcqK+CtPgKOdYKCLUdw238cgWR2tdAWLJ+s57xZf+Y=;
 b=jFX60U1lxCSBOa8t/1PdSfb/kdQVkSZh8Mk5VzCBsZTJbt2yo44hS6AtFCV/WHqQpx
 3qbwM6aYWdIajwbaZZ5EhZp4fO+lmJ1e4PZSf/j6PN0nf0VFxyZEKSkBZx3DVD+I9MKa
 xrM4cZ6xC9OoiW7EkAZUI7RYde5/gJi4Mth4cQLIcHl+rewqFyoNnoJMhOUqzbaKaPI2
 U9VBpWGRHvk3QJh6QzrxxibeO+VwGGg4y40MpCL6actTzyPTm1TwfNkLyxEg/XuARz3Q
 Rsa0amnG5coKjjJlF+LpckLtPCNZqvxeoTWlNxc+YliNEl9N/xcqn//D1T2pO8COBC+9
 d6Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=npcqK+CtPgKOdYKCLUdw238cgWR2tdAWLJ+s57xZf+Y=;
 b=QcO751e9qjf2t4nCbN+eHoq+a2pTDKuoDKOSx2bU10O1TBxgsOHUhg7nSk1JpmVdn6
 uKSz9z7u9BxeU0TS4xbpMD+uWtg1+oGUbjTIWgFf0hn+4SmMDGHn8kl+nIfQ1CcGWAgm
 ujiEfg1wXoLt98IW9chvFjWH7KqrcYthj3jP0P77aqa1LJLc+r06Nt57+wuBtOrJUqtu
 0WPTgMtxLyWEcImNvEmlB21UXSRjL+CwHeJAx4IuwnFEGrPouJSf6w4AOKc23/50PvBB
 CqCjN6LXD6abvsEOEalnzhZTacZWUAM644ANn+CbWu5Z6y5mVOF6lj4Grnlcew1mx8wj
 8C0w==
X-Gm-Message-State: ANhLgQ087R93oA53d4eH36KjxX8c0dPG+yTyJx0nrGoeSQuRWfPI+HDt
 c6ZZeVgOv7R06gmU2v/MVLcZNOs+TxG5Jc0zK+M=
X-Google-Smtp-Source: ADFU+vviwKS4MeppDNv2kpImVhSonDJ24hNChwGak/JUqVXaYc2hp5YiGqyd8YCmOP3NKhW87RY1O4IxPy8g8zMdixs=
X-Received: by 2002:a0c:f985:: with SMTP id t5mr7387374qvn.127.1583427207904; 
 Thu, 05 Mar 2020 08:53:27 -0800 (PST)
MIME-Version: 1.0
References: <20200305050207.4159-1-luke.r.nels@gmail.com>
 <CAJ+HfNjrUxVqpBgC-WLHbZX7_7Gd-Lk7ghrmASTmaNySuXVUfg@mail.gmail.com>
 <4633123d-dc61-ab79-d2ee-e0cef66e4cea@iogearbox.net>
In-Reply-To: <4633123d-dc61-ab79-d2ee-e0cef66e4cea@iogearbox.net>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Thu, 5 Mar 2020 17:53:16 +0100
Message-ID: <CAJ+HfNg_cP8DC+C0UGHnumde6+YhqBoTB909A9XwFMPv82tqWw@mail.gmail.com>
Subject: Re: [PATCH bpf-next v5 0/4] eBPF JIT for RV32G
To: Daniel Borkmann <daniel@iogearbox.net>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_085329_318007_2626E94B 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bjorn.topel[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Song Liu <songliubraving@fb.com>, linux-doc@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Jakub Kicinski <kuba@kernel.org>,
 Andrii Nakryiko <andriin@fb.com>, Xi Wang <xi.wang@gmail.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Luke Nelson <luke.r.nels@gmail.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Luke Nelson <lukenels@cs.washington.edu>, Palmer Dabbelt <palmer@dabbelt.com>,
 Netdev <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, 5 Mar 2020 at 16:19, Daniel Borkmann <daniel@iogearbox.net> wrote:
>
[...]
> Applied, thanks everyone!
>
> P.s.: I fixed the MAINTAINERS entry in the last one to have both netdev and bpf
> to be consistent with all the other JIT entries there.

Ah, I asked specifically Xi and Luke to *remove* the netdev entry, due
to the bpf_devel_QA.rst change. :-)

