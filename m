Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5A277FA6
	for <lists+linux-riscv@lfdr.de>; Sun, 28 Jul 2019 15:40:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pxrd2CgzAyPeqm2YzRtLvyInjkJGoXgcmL8xP7+yy7o=; b=sovf5/DQ75c/7d
	KitzoXM5Yf0sYxCiDHYANBRYvUI6/xqF0PaHwe2Cly0U801GercIA16WZotXX11j/mepEbXDUeu5K
	zBq6uTO7LKmsnN9DhIY9EWg0yj8MX2VosddSH7V/B4AOSwhI5Is7y3RpLx+U/npAnwHS2VN2SPR2k
	x+ZDObHLlgt1AV72z9ZgEroD0KfxNd3Mxy/GPleXYFEJV/4PlDo+aCa7ZFJBopgO2hDmWEKiIL0WN
	MOL5ULMzT6zf4+1sA6qU0doDgI/fGZcP6QAtv9UStQXPAkBpY5r4KfvTE9L3NF9EuweKyJIh1RJxj
	V8GDbUDeZwlY2tObDUug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrjPu-0003ry-Mq; Sun, 28 Jul 2019 13:40:50 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrjPl-0003lh-Tz
 for linux-riscv@lists.infradead.org; Sun, 28 Jul 2019 13:40:43 +0000
Received: by mail-ed1-x543.google.com with SMTP id w13so57087060eds.4
 for <linux-riscv@lists.infradead.org>; Sun, 28 Jul 2019 06:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/N4pBS+wzG7+cVkEEmHSw6pNTtAYb7dDfOSm3I7p1oM=;
 b=qSckxRVkUtkrI3T63z01gTkOz1QXroD736U0Lu0+7KoWAl2iJMO9Qp29pATJ7/e2Bj
 1UffHHo/J8QJaKujQ6rDOlgKsfeIbLilO2+thQShb3Yolf8+xHnAp8F/V97tKvL7BCm0
 tnSPXAG6zoAiMaFeJaFZtlBl5++4/WQF/TkSoV9ov8aVWLjR2cM6MndqCqZCQIYlra8u
 4kswHPvcZRUyCx7JgkawhgHr6QDMgE4NA9r9j70cR7BIgGseXfl37qxKUTk5MRgPP84U
 4gQDgNDJun5NSKvSInJh+8IztC+VmHfT2mMdvJXewdbsH91WslW8BrlVRhyX13NYDgF7
 OROA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/N4pBS+wzG7+cVkEEmHSw6pNTtAYb7dDfOSm3I7p1oM=;
 b=n6rNeyRGUG9+FoHNGUm4Z8n4NjTQeuP/4yjfPhbnPzf107fEIY+fbsC05ZkfgWmlUh
 Pznx5uTEl/BaO1SCLNbNIRfsw+wotqKdtLFEdl0iOJfm9DDBYjxp8yRQkbfBMF9fHdFo
 utEz4zOFpgCTeBNkDlJYahyCiL1t1oQ3U0SjgHmwXme/RKBz0bpMOjBZcivKnH9fObTp
 yZ51iyU2qWlaqrpQxjYAzhiEtNYnK/Eio7+FZ6dPj7b2ZcuK/HMNs2Rw+PXa3uzeESA3
 ijekqBCRXxqZIO6GM5G+UDzzclK7bk3q94m6oKyEmJ6ISYSrDOcdglFNU1jHjNXxl82Y
 0Z9A==
X-Gm-Message-State: APjAAAXl9xarysKIKUdm4gj5wczFVVsf1Bqdld8NK4kiSrF588H6tFhy
 pEK4EWnfzqKkW9dLWUtBdQtYbOP0Du2PwB/VPMY=
X-Google-Smtp-Source: APXvYqxrdx60nP74vKeV9PJU/NlokFcEKb4pT2kFy7UFBCuBn92G77ltXyW197yRIj65YGGATN7XscVngZvnAYQGATg=
X-Received: by 2002:a17:906:a481:: with SMTP id
 m1mr56063760ejz.87.1564321240719; 
 Sun, 28 Jul 2019 06:40:40 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1907251429420.32766@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1907251429420.32766@viisi.sifive.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Sun, 28 Jul 2019 21:40:29 +0800
Message-ID: <CAEUhbmVHjy86js51u-VP=X8h4xg19kBjKkGRu+C2T2pUwQz6Qw@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: fu540-c000: drop "timebase-frequency"
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_064041_975468_3FEC73D4 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Jul 26, 2019 at 5:31 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
>
> On FU540-based systems, the "timebase-frequency" (RTCCLK) is sourced
> from an external crystal located on the PCB.  Thus the
> timebase-frequency DT property should be defined by the board that
> uses the SoC, not the SoC itself.  Drop the superfluous
> timebase-frequency property from the SoC DT data.  (It's already
> present in the board DT data.)
>
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> ---
>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 1 -
>  1 file changed, 1 deletion(-)
>

Reviewed-by: Bin Meng <bmeng.cn@gmail.com>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
