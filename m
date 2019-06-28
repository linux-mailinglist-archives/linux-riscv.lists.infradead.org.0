Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A325A2A4
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Jun 2019 19:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/DuPnm2AHdrBTql4mFk4si4//q2gZUCAZf6ej2dgj4=; b=dJI4Z6FVvqOetb
	rhQhJUU8vxiqFmLY9+RWPNubBSb+qSmEmd3ncd1vsIsJJv9+qfVOGqvZa6VeBJ9yxAcXxleUf6eyy
	pfZN4OFA7Qd0LG1IFy8C1jmh+BqK9TuF9UkhcFEXI8eaQSYSL6XqEiTmPZEvRWp2WHEKhmoMTnm6l
	o749tEcaZmE/tBp6qaa+Z2qZbN+R5KIbKI7RT6nMqonWDl2T+/3oHPz6rVOeidJm1YAccsRrrtlsU
	WZXTkr1TgjQRFPRo/DRClPAv4vo/mZOk0w9KyJZIT19Ja33fi3HEoJ4w1fXqWN4+DboGSVynWxdA4
	YcOIgvLH1a9V6jgCOcTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgusT-0004Aj-Ia; Fri, 28 Jun 2019 17:41:37 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgusO-00049Y-UT
 for linux-riscv@lists.infradead.org; Fri, 28 Jun 2019 17:41:35 +0000
Received: by mail-io1-xd44.google.com with SMTP id j6so14237273ioa.5
 for <linux-riscv@lists.infradead.org>; Fri, 28 Jun 2019 10:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uqJ6r1Mjakiqpd0ZD9iGpyAkpv+xSUcUqESly9SnS30=;
 b=lOFXls3FkwUg97CyPjvyXgrcjW6i3Y09TjD9O1sKjz+4VVLO0kGXwLk7Lh5Ks/8aAW
 JijWwpKYFieazAh57d6dT1oO3AO01TZnC7WoBmE1OSNdS8W3PrRrtsH2CbmHSwhjVWw+
 zeSbiFOvp9Kpu25n4n1vGhIUhGVzJdYcNha8A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uqJ6r1Mjakiqpd0ZD9iGpyAkpv+xSUcUqESly9SnS30=;
 b=tAoG95uqNXDGTIHR4cOUY5I5M/O1ZfxSazZRk904i43HitQs/2rhSQ5iu6QcC68Dmc
 j3iVCJ4cwujUp4vAmbdVnKuMv4Z5sG2UyajkXxgRi+SbX466k7KPssKslnrDth5+0eMR
 7N5fBLfNgZP2btBVYDGAixGqEeGGDZFfSqg2al2gs/5H91BZE/vgxoPw20HJDxm8kF3g
 cTYD1hBA6AMrARAqvvNj3d8JNTXkxddw8T9iFKWMW9ErzHDNDEJDtO2GNZ8rMMT1kZy8
 DUKmuYM9DDiPqvDJ+Kq6B72zCiG5g1dbtS6JWCHfdwhFHmlfOyvX7zvCEIcXbTZpypxS
 lqYw==
X-Gm-Message-State: APjAAAW7m3PSFPpRAWx/HhtHq0b3HBWWuzshzCjDALp9tTyMteMGoynC
 r4Tw/tDglehVOTr5T2mo44Smw2+iI0twIjk9CeJxyQ==
X-Google-Smtp-Source: APXvYqwcltk4JmdpNvtJF1qrqeEE0+mFopXztg8enMwMB7rkn3G9Vg90wC0+Jkas2dqkKaCJf2/GoPK0tBQW9eKSXf8=
X-Received: by 2002:a6b:f90f:: with SMTP id j15mr12016235iog.43.1561743689556; 
 Fri, 28 Jun 2019 10:41:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190626231257.14495-1-lukenels@cs.washington.edu>
 <87y31nuspw.fsf@netronome.com>
In-Reply-To: <87y31nuspw.fsf@netronome.com>
From: Luke Nelson <lukenels@cs.washington.edu>
Date: Fri, 28 Jun 2019 10:41:18 -0700
Message-ID: <CADasFoAqjZVnMFGZNgQMhXsBC78vbb-u1PPv_aZx3fMXeHBXKg@mail.gmail.com>
Subject: Re: [PATCH v2 bpf-next] RV32G eBPF JIT
To: Jiong Wang <jiong.wang@netronome.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_104133_010656_206E90D5 
X-CRM114-Status: UNSURE (   6.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 bpf <bpf@vger.kernel.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Luke Nelson <luke.r.nels@gmail.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Netdev <netdev@vger.kernel.org>,
 Yonghong Song <yhs@fb.com>, linux-riscv@lists.infradead.org,
 Martin KaFai Lau <kafai@fb.com>, Xi Wang <xi.wang@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 5:18 AM Jiong Wang <jiong.wang@netronome.com> wrote:
>
> #define BPF_ZEXT_REG(DST)
>         ((struct bpf_insn) {
>                  .code  = BPF_ALU | BPF_MOV | BPF_X
>
> So it can't be BPF_ALU64. It is safe to remove this chunk of code.
>

Thanks! I'll fix this in the next revision.

- Luke

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
