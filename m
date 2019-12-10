Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2A8117FC0
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Dec 2019 06:32:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0i5fqFii9h3zbWBDVAysAxtbLv8smZHCpf4SOKLHP/I=; b=PXWQ3zK+I5vMdD
	1K+zHJ6kU5BkrvDeM6y6NjcHgfGcttBUBxPcjqDOyLUbhWiWUQ4t/QeuTALh/hUgQUkHiBepQ4+ae
	NYyFuOVOmkIpuJ+1XH9ucSFFB9DymkRqByjn9ESzSxqvxKGadNc8pQjIJOpfQTflxYDJiDrW8XKis
	trHYOk2t+6MLUOyaeV3G6prIK8Vwq3aU3tgVdxnBv1EJcdN8fbq6rG8Dlvc8rywS7L7X3vf8ps86N
	zxOzE9DiI1upoPDtfB285RZa+xyeSl7iZu6TAV0BCo+txH0NV6mpJkBfprJpRjeA3AO/tWnff6koq
	eDbgjZ+BHaMWtdzpQPuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieY7e-0005Us-IK; Tue, 10 Dec 2019 05:31:46 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieY7b-0005Tw-Ht
 for linux-riscv@lists.infradead.org; Tue, 10 Dec 2019 05:31:44 +0000
Received: by mail-qt1-x842.google.com with SMTP id t17so1682905qtr.7
 for <linux-riscv@lists.infradead.org>; Mon, 09 Dec 2019 21:31:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=0i5fqFii9h3zbWBDVAysAxtbLv8smZHCpf4SOKLHP/I=;
 b=tQ7NTeRHAxaLNx6IHMXSqyBmJf1gYVzude/M4QCDh2PlbjUzZWSuF/VGZ9HZuZ1qY/
 zRqG2q0O57zGo8OLc0aTt6cCoy+v728+FGFWdR3q4NrKc5WjmIkVRMxG3os3wTy71PiT
 e55ZNE+XG6nCfbyKVpnAkgeeWKHlZNhRQ2pyspfAXPPPcwlx3Qs98vs4K8I4qosdW2Ro
 qXfg99EKHSV0wBEGiSKUoP68UcF8Tv322d+Fl7Bw1C8DmiHyVq1vju8tDJqkLReeaFH6
 To+/5yzd/3j/0Rho77UBs+d9oMyT6eJTf2RTUyhuCIWKAECYHrVRoV5LGRzBUpHvrYq3
 P/AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=0i5fqFii9h3zbWBDVAysAxtbLv8smZHCpf4SOKLHP/I=;
 b=QjzE+hrnIzWl+WPthwJ06J6I/XxfV0fnYVYNzd8Bwlb+i3STwPAiDZVo33Qz3zl0G8
 Pqt6O3MyItHmn+Rt4uVP/P0Idi9jrRL4T3Ia/5X0VYv+giIMs0/x7Mdvex1AKFnCzrnr
 1gkAOeyDeNgKZCkkYP5ojune2+ti0cj4bsfBwx59cTolu4u5m0Dxb5sOQCWZE2cohkl9
 NXwhntW62FmAgjv3GpVZzXviDdf4u7XEC3Qt2n12l4ZFqnwniTyGQmZPm3zr+MZzifX4
 eS6nl0TaocEr+VuCm9xiSTP9Rl/wEZtTMh3mEm54naruiqCiaPBY0HYHO+xZs9f3J4Ds
 1pJA==
X-Gm-Message-State: APjAAAVKLAozaLTeMuAv5nvUNScaLkAPqEgx+TPWbrj5TjjcvTCh7NjM
 c8/YUrblrg3RGlsGjY65SHdqEa+OOWtnefR3RjBKj6et24XZIg==
X-Google-Smtp-Source: APXvYqyt0Hno3XoOYazUzPfoq8HIUPXgg2qVyO9UxGrvCfIciJG9wGyISvcyjdvUm+i1pmUEpuEObOvV8wUJni1oyws=
X-Received: by 2002:ac8:2310:: with SMTP id a16mr28240964qta.46.1575955899915; 
 Mon, 09 Dec 2019 21:31:39 -0800 (PST)
MIME-Version: 1.0
References: <20191209173136.29615-1-bjorn.topel@gmail.com>
 <20191209173136.29615-3-bjorn.topel@gmail.com>
In-Reply-To: <20191209173136.29615-3-bjorn.topel@gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 10 Dec 2019 06:31:28 +0100
Message-ID: <CAJ+HfNi=kDP--Vuuphdn4YhZDbBfoNXzcPDDaDo7vdvuJ0D1=Q@mail.gmail.com>
Subject: Re: [PATCH bpf-next 2/8] riscv, bpf: add support for far branching
To: Daniel Borkmann <daniel@iogearbox.net>, Alexei Starovoitov <ast@kernel.org>,
 Netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_213143_616385_A392BEE5 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bjorn.topel[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-riscv@lists.infradead.org, bpf <bpf@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 9 Dec 2019 at 18:31, Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com> =
wrote:
>
> This commit adds branch relaxation to the BPF JIT, and with that
> support for far (offset greater than 12b) branching.
>
> The branch relaxation requires more than two passes to converge. For
> most programs it is three passes, but for larger programs it can be
> more.
>
> Signed-off-by: Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>
> ---
>  arch/riscv/net/bpf_jit_comp.c | 352 ++++++++++++++++++----------------
[...]
> +}
> +
> +static void emit_branch(u8 cond, u8 rd, u8 rs, int insn, int rvoff,

The "insn" is not used. I'll do a respin.

