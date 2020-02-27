Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AE7172C5A
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Feb 2020 00:34:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=faeXfJlzS5GQM7uC+KFYtFDnAxxuzD98DdPgHoNTSmM=; b=YAyScMkUTalg/G8t71LWSi/yS
	NiYpeGJbJsyd89FHCZ/dleeCYAUpS8BFDBpnLf+CAqrtZN+x4oA9t9A7OErDTpjPYW9M9KDwWJob9
	KN4oEt6LGKMGSsta9/9gFanoDvKQYNfBc/VzXtDbUiAtWNccmNjdg5i2lchCgABQ+B/CcqJ9IUCJH
	zPYNHaUSvuQSRVr2Utsy1A6NEctwKAqp5smLbBilTpdTfKSBK0PsIlfHp3RPGzYu7/V361wfN2RBP
	wYm5tdJvpdYSgsV0K2HPGK1250oAvh/wFj1jNI/2GKdTBzZE+um+7bqHu/Unn/tNBCfnFioj1G+Yr
	RaWuUzOGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7SfK-0001YM-RM; Thu, 27 Feb 2020 23:34:02 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7SfH-0001Xq-6O
 for linux-riscv@lists.infradead.org; Thu, 27 Feb 2020 23:34:00 +0000
Received: by mail-pl1-x641.google.com with SMTP id p7so447497pli.5
 for <linux-riscv@lists.infradead.org>; Thu, 27 Feb 2020 15:33:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=faeXfJlzS5GQM7uC+KFYtFDnAxxuzD98DdPgHoNTSmM=;
 b=T5+uCPzhYVZON/vDvsZKKTt/Ww54/o+W7APFIrPf3eNpMdB0q5KpkAGigk/Iu+D2BW
 6J2oMumCrQ8tHI7ilC2taHtFJD8WY9t/QVZOB8Z2VtFhpzsKVKLDid2JdL6DJvI0Sxex
 HTa37TI9XWj9/uxs4GkBYPh8W6jZ/5Aje+QLqGm17COahOEZbjcJTj0iPuOdk+RLIZVm
 MuOnfhtPgn0Q56++tyLYilF00JnRCo5rGXqJXThMqK26wOLspt9SbU+Xw22H/swwlTY8
 WrgEqkgzyJKXLj944RMeL9BVKPi6P4UBK76kQXUfbuyaBdF4+zhl/OadAYzoidlnO0ns
 Y1+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=faeXfJlzS5GQM7uC+KFYtFDnAxxuzD98DdPgHoNTSmM=;
 b=k4AW5As0XPFliqS5KgZDUvVZS54P+xNsoq1mPkAI3o3+rsVA6e20nuJZz5DQNvF0IJ
 o2cuoUiK1/zsmW2Yjqw/PG9bcq4H1kypglxrAuG3ZD2dM3n/l8j2OVzRIFedEWQNOgEW
 5gOfAYc9+zItCIy5Gr+YijlOu/l0KFeU5nN0H5RhgvaX0SX8GvHFuyoEFmuR+rTdn1sf
 p/04Tg2aWMn3E/51jb2uYpjkXeeunBDSx8EMxPMQ6qEMbMTlq/v3w2v4jDSa4w+MyTqs
 RgEG12pzcA631vJyp/X8RrAorCGmYdaxd2PLo1kGfp+OYjhseqCAqdetfz0fgS9FWuW0
 aK2w==
X-Gm-Message-State: APjAAAWHli3V5yC0+siEt+0ngFat6Oh7IWp/t7ARATdXuJ48ke8whLsx
 zNK/KlQrbd3m//uA0t3OyBC8fP0IpM8NigbjATYVlQ==
X-Google-Smtp-Source: APXvYqxXeWDxaGq9NlPe9HIn6J/Ifylj3ev0huenDuQNVJd536nBdgCL4aPpU5RvBtM1Z7aVuTxNYjqWH3vClX2THl8=
X-Received: by 2002:a17:902:6948:: with SMTP id
 k8mr1162951plt.223.1582846438094; 
 Thu, 27 Feb 2020 15:33:58 -0800 (PST)
MIME-Version: 1.0
References: <20200227213450.87194-1-palmer@dabbelt.com>
 <20200227213450.87194-4-palmer@dabbelt.com>
 <CAKwvOdn0wuytFTkJRm7u5vGUTWyYnrXdGGXHfoOfg6ndzT+u8g@mail.gmail.com>
In-Reply-To: <CAKwvOdn0wuytFTkJRm7u5vGUTWyYnrXdGGXHfoOfg6ndzT+u8g@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 27 Feb 2020 15:33:47 -0800
Message-ID: <CAKwvOdkbxTeABpnBxhRyGSqxUpDqnfzf-JAiLw0uqB0zq-f6Bw@mail.gmail.com>
Subject: Re: [PATCH 3/3] RISC-V: Stop using LOCAL for the uaccess fixups
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_153359_286316_1A7063FE 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-riscv@lists.infradead.org, Palmer Dabbelt <palmerdabbelt@google.com>,
 kernel-team <kernel-team@android.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 3:03 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
> I also see two usages in:
> arch/riscv/kernel/entry.S
>
> Would you mind fixing those up, too?

Ah, removed by patch 2/3, sorry for reviewing them out of order!
Outstanding question about `.altmacro` though.

-- 
Thanks,
~Nick Desaulniers

