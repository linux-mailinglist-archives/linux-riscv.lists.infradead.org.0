Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E4C17F35D
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Mar 2020 10:20:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wjCevU/DO8QcnVvhecJsNsvY/Eogkcy8Wp1LUXYrp/o=; b=U6sI2CBUvAmhGXygmrNnLznYa
	YHFQcfcFrrb0wz67EwaeCHWIUHkYGUkrQEqf0zVU5v2HJqu89hQSPkOt9Ab0HogPxFhYvkWkwV/Qo
	QNOpARoIKxJiLjU2gKnuQ5udUsjULEzrBbs2+nnWZdBV0sATe7VTczYu1gIq3Fh8RTicnbzpY5Yt3
	HNCKPMKga1dY0dQ6HsQ6yboOFPeqB6MMxlV6IcVsga+57tha2tH4MjBP9bAIYCTNICggBLX/YTzLL
	+iNzW/m/M/0XC8LRwmcuIe/XPRv9o8+bJHohrvylHHZKgGUO/S1uRVJXLgQjfBpaShHfCOh4f0guL
	zXZCqOr5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBb3K-0001fs-7O; Tue, 10 Mar 2020 09:19:54 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBb3G-0001fL-JE
 for linux-riscv@lists.infradead.org; Tue, 10 Mar 2020 09:19:52 +0000
Received: by mail-qk1-x744.google.com with SMTP id q18so11990491qki.10
 for <linux-riscv@lists.infradead.org>; Tue, 10 Mar 2020 02:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wjCevU/DO8QcnVvhecJsNsvY/Eogkcy8Wp1LUXYrp/o=;
 b=mODK0PqZKz4tb/WcnFSbx2LYpETCoT0ilHjfL3D+Gc1Cvs24FfABK7Y5uTG1FF7S/5
 JSEinOAr9zNhe7uvCxyPvpWevI11zfcqBZiNkCoYR6vfGQuugG9sdnCM+4DY2C7TQ480
 6OSyktiD8UDOJi3QuaoSvnZxqbSx2QZ+cMBlApXYeppkpZsC2T+RXqhUXbTYHytUWasy
 UlPufV8o3KWP7hmxcibzOBnDBBS9GmbuBaWiFAwupUoCbfBxlDCV0rm3OqFkflR3qQ/v
 afQuj4Aq1FB8n3rrZzcbJCfv7itqexXpDYdMW6HMrYr5iWEhNs6iEqjcUFjcxo1bZ07/
 A7VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wjCevU/DO8QcnVvhecJsNsvY/Eogkcy8Wp1LUXYrp/o=;
 b=tsb813CBt6Uz6KMmwRdfZ1anQCCcStK00YaRe2pqMRByu0MW+1ID5zx2gW86diCfWN
 jY1Jm0Z6E32rdSW+bSt6ZZWnwW8n6egPm3FFui3zmNxqgvMakSi6ujyvk+v3Z2towCCc
 eH6kL2iEdkbRJuToPcUjogQvhXv2vSq2SJ9TKDFmYGtZQcD6AcYZRFYauSRK4d7ZRAT6
 3n7x86az1f5xAA9he4mZKD26xcPxTOdxpdRNKUs95wF1JkZSjDNxPWpazgS9rcNwq/l5
 gLgxZYmbwbSkWV5CVLIr3AxVbSciK1eb8xw2Soe6euZHsVW+qPPfI12TDIoWNsaLUneM
 vRNg==
X-Gm-Message-State: ANhLgQ0A01Zvlt0dtlENSgH3rpRsvWH24SXYGryOLZHrVe8utI/3jqNS
 tVjDAos9Hq1S4+xhS6M2uqdxjg+USdEwElIoAnoLQ0RGt3oKLmnh
X-Google-Smtp-Source: ADFU+vsmRWFj6aNZBYLKrp81MYwc1fe87ZUAz4TMoAJhlSk8+/g2pNwyYoaYHhWbyuq4lbGcnJ4gpHmmticmozr+fHI=
X-Received: by 2002:a05:620a:1443:: with SMTP id
 i3mr9039808qkl.113.1583831988838; 
 Tue, 10 Mar 2020 02:19:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200308094954.13258-1-guoren@kernel.org>
 <CAHCEeh+XYD3uVmaQRGpY=VGxpO9hzMeKasNmAojhkZe9PJ9Lug@mail.gmail.com>
 <95e3bba4-65c0-8991-9523-c16977f6350f@c-sky.com>
 <CAHCEehK0rgBpEzrWar1UTWJoOz=OQi18iw4Y+v3z5Hi=7JCEWw@mail.gmail.com>
In-Reply-To: <CAHCEehK0rgBpEzrWar1UTWJoOz=OQi18iw4Y+v3z5Hi=7JCEWw@mail.gmail.com>
From: Greentime Hu <greentime.hu@sifive.com>
Date: Tue, 10 Mar 2020 17:19:36 +0800
Message-ID: <CAHCEehLq5f+DGusL0T4ZUuJ2hTRhSyLSGRpKHhq5b4J3nXfBHg@mail.gmail.com>
Subject: Re: [RFC PATCH V3 00/11] riscv: Add vector ISA support
To: LIU Zhiwei <zhiwei_liu@c-sky.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_021950_644722_54D14FD2 
X-CRM114-Status: GOOD (  18.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arch@vger.kernel.org, Guo Ren <guoren@linux.alibaba.com>,
 arnd@arndb.de, Anup.Patel@wdc.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-csky@vger.kernel.org, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, guoren@kernel.org,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Dave Martin <Dave.Martin@arm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 4:54 PM Greentime Hu <greentime.hu@sifive.com> wrote:
>
> On Mon, Mar 9, 2020 at 6:27 PM LIU Zhiwei <zhiwei_liu@c-sky.com> wrote:
> > On 2020/3/9 11:41, Greentime Hu wrote:
> > > On Sun, Mar 8, 2020 at 5:50 PM <guoren@kernel.org> wrote:
> > >> From: Guo Ren <guoren@linux.alibaba.com>
> > >>
> > >> The implementation follow the RISC-V "V" Vector Extension draft v0.8 with
> > >> 128bit-vlen and it's based on linux-5.6-rc3 and tested with qemu [1].
> > >>
> > >> The patch implement basic context switch, sigcontext save/restore and
> > >> ptrace interface with a new regset NT_RISCV_VECTOR. Only fixed 128bit-vlen
> > >> is implemented. We need to discuss about vlen-size for libc sigcontext and
> > >> ptrace (the maximum size of vlen is unlimited in spec).
> > >>
> > >> Puzzle:
> > >> Dave Martin has talked "Growing CPU register state without breaking ABI" [2]
> > >> before, and riscv also met vlen size problem. Let's discuss the common issue
> > >> for all architectures and we need a better solution for unlimited vlen.
> > >>
> > >> Any help are welcomed :)
> > >>
> > >>   1: https://github.com/romanheros/qemu.git branch:vector-upstream-v3
> > > Hi Guo,
> > >
> > > Thanks for your patch.
> > > It seems the qemu repo doesn't have this branch?
> > Hi Greentime,
> >
> > It's a promise from me. Now it's ready.  You can turn on vector by
> > "qemu-system-riscv64 -cpu rv64,v=true,vext_spec=v0.7.1".
> >
> > Zhiwei
> >
> >
>
> Hi Zhiwei,
>
> Thank you, I see the branch in the repo now. I will give it a try and
> let you know if I have any problem. :)

Hi Zhiwei & Guo,

It seems current version only support v0.7.1 in qemu but this patchset
is verified in qemu too and it is based on 0.8.
Would you please provide the qemu with 0.8 vector spec supported? or
Did I miss something?

489             if (cpu->cfg.vext_spec) {
490                 if (!g_strcmp0(cpu->cfg.vext_spec, "v0.7.1")) {
491                     vext_version = VEXT_VERSION_0_07_1;
492                 } else {
493                     error_setg(errp,
494                            "Unsupported vector spec version '%s'",
495                            cpu->cfg.vext_spec);
496                     return;
497                 }
498             }

By the way, can I specify vlen in Qemu?
Thank you. :)

