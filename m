Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDDF17D856
	for <lists+linux-riscv@lfdr.de>; Mon,  9 Mar 2020 04:42:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CNYYFTCalmUuSxAWR7XaCM/gxKPhcvr0JtZkj6eTI9Y=; b=kJqKaR9fiu8BX67OGVe2HWZ1l
	c5Yt7rICgpnJgTspvQlQ5dypCNLzw1C3PM7s2re/iYy6VFQxATuOFBe6Dc2EE+0Q1xViDwUQ2FR93
	z/OHJkeHCh5y4sRqG645AEsW7uMU8ABtQo8LtDEuVpSD32JSx7GrK17HVdF1RHQAlQ/N36JSUb3SN
	U3qQvoanxIZ2q51kF6RJPh0oG8haWeukEE8qZeIh8Mgi1OCIJ8lRFDkcYOi7wZEzoeKEHqJE4DAgT
	moOxdoEIvBHoNbZv/iyB4uWpU3r12aAU29ZauUG4aQe7HW2Uqbvf1iNXMbx1Dw8Kf0V2eqWsjzJdy
	X3Tl3BSNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB9Ik-0001gT-Ha; Mon, 09 Mar 2020 03:41:58 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB9Ih-0001fl-7Q
 for linux-riscv@lists.infradead.org; Mon, 09 Mar 2020 03:41:56 +0000
Received: by mail-qt1-x843.google.com with SMTP id l21so6046416qtr.8
 for <linux-riscv@lists.infradead.org>; Sun, 08 Mar 2020 20:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CNYYFTCalmUuSxAWR7XaCM/gxKPhcvr0JtZkj6eTI9Y=;
 b=VHknv8LB3GFRw23ZbiPdreuz6d01GLWWAJvdX5EgeD9/c/GcOS3IP+ZhkeICb0JhfH
 XVw67cYfVsHCMH6qw7HsKBL6jpr+j6KBSqMec750uAs+10sQ6riV2cVg2oqfVtKcQHyP
 Z9hT3Z+Ws38DjPnOB/+jFMRTCz1yayzN6dXEs0YuebKNXz0BN2awgZsy5VV/cWs6MZoZ
 d94/E5LVYK9fXw1NUB6hQ8fdh3XQZyglH788D+Wk2e0T7MP2IAqDsaAincG5B8kjJe9i
 NQzh+apsnX9PlOHTG2BZPhAyc6uIbxHgmQJKN3JkWRl0MO23Fvjem4bcygW4f+/zlNW8
 V8iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CNYYFTCalmUuSxAWR7XaCM/gxKPhcvr0JtZkj6eTI9Y=;
 b=Tp8FGB1AnbaSPNCi3BNM46YikSZtijslzJvD85CiBKt3HNxrK6RodcCYLlunbNubpO
 TRe7paBy8Z0FuXd3o1eceo3QspznkydDGOdZWSEacug92GQHX2glW+zJJZgAeer78Grf
 QhSgpH2ZPP92ORNI+C5Fel2ExMT4KEup/656aJGo0XTUZe9vtxVbB5WoNUKmB0mJel9+
 d3SMizcjTPFixBoXEEOetgzYICfynOpGCH/lt+EtPglPYYKf8u+PKBf+MAQ+1rtkDZMf
 vAGFgCnSQkEQbxjWjvwKxnXQ5qRqa62INB0lAdUyqI4GwPwQjLbZENmFulETEGjvtnXz
 EcCA==
X-Gm-Message-State: ANhLgQ166g1KjoraHFQ/vSI6zg9QFy3t0t4PhijFpzxgrel2TxIzcUWB
 ah0p+H8CGLmVaKEGCMrhRipV+RZXchfEqfnEqd43jQ==
X-Google-Smtp-Source: ADFU+vt7hRKCpjY9Y/6PbDXX5/P/aKDMHT0L5G/8Gt3a3KMISifEbxYw8sWoZVsjM25ruYRMFoTYggX7kXK+ZNULFqA=
X-Received: by 2002:ac8:1345:: with SMTP id f5mr12999290qtj.128.1583725308848; 
 Sun, 08 Mar 2020 20:41:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200308094954.13258-1-guoren@kernel.org>
In-Reply-To: <20200308094954.13258-1-guoren@kernel.org>
From: Greentime Hu <greentime.hu@sifive.com>
Date: Mon, 9 Mar 2020 11:41:37 +0800
Message-ID: <CAHCEeh+XYD3uVmaQRGpY=VGxpO9hzMeKasNmAojhkZe9PJ9Lug@mail.gmail.com>
Subject: Re: [RFC PATCH V3 00/11] riscv: Add vector ISA support
To: guoren@kernel.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_204155_269320_71EF9192 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, Guo Ren <guoren@linux.alibaba.com>,
 arnd@arndb.de, Anup.Patel@wdc.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-csky@vger.kernel.org, Liu Zhiwei <zhiwei_liu@c-sky.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Dave Martin <Dave.Martin@arm.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, Mar 8, 2020 at 5:50 PM <guoren@kernel.org> wrote:
>
> From: Guo Ren <guoren@linux.alibaba.com>
>
> The implementation follow the RISC-V "V" Vector Extension draft v0.8 with
> 128bit-vlen and it's based on linux-5.6-rc3 and tested with qemu [1].
>
> The patch implement basic context switch, sigcontext save/restore and
> ptrace interface with a new regset NT_RISCV_VECTOR. Only fixed 128bit-vlen
> is implemented. We need to discuss about vlen-size for libc sigcontext and
> ptrace (the maximum size of vlen is unlimited in spec).
>
> Puzzle:
> Dave Martin has talked "Growing CPU register state without breaking ABI" [2]
> before, and riscv also met vlen size problem. Let's discuss the common issue
> for all architectures and we need a better solution for unlimited vlen.
>
> Any help are welcomed :)
>
>  1: https://github.com/romanheros/qemu.git branch:vector-upstream-v3

Hi Guo,

Thanks for your patch.
It seems the qemu repo doesn't have this branch?

