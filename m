Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1501A9B9B
	for <lists+linux-riscv@lfdr.de>; Wed, 15 Apr 2020 13:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QfIxXQosRFYKLlIDNyN5+DliCdAEN+OUu1+ZqmS9ak8=; b=p8ZfVcvVxPKsvqDIPrFDw3KlA
	Tec2/jcRcFQhglQPT39G97IMHJwhpJdY69eFHdm0gaOM/TWoAo5tJNEFur4rEXenBKaMn2uc6mkpn
	sIk6Jz8pU7deKYzyblJwj+BGyQc3SkdZ7GgU4SoKgVSg/eCmoLjLzYbrwXznkX2CAV4Jec4Ysm5m3
	7wAg75hiK438WCOtLURGFeInj+TQbu05fVhcBeDSor8EE0TNoFZ++Y4aHYF9MnDsR5m5oh5aBBWNo
	TsiRzhrev1RwHEs0UfvUqXD2SKhkbh5EfY9bkmTKYFYZrWu41rqFYpe4w/jpBqse+yid1p/HtcytB
	scf6uz4pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfnL-0007Hh-2R; Wed, 15 Apr 2020 11:01:27 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfnF-0007Fj-0X
 for linux-riscv@lists.infradead.org; Wed, 15 Apr 2020 11:01:24 +0000
Received: by mail-lj1-x241.google.com with SMTP id u6so1570708ljl.6
 for <linux-riscv@lists.infradead.org>; Wed, 15 Apr 2020 04:01:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QfIxXQosRFYKLlIDNyN5+DliCdAEN+OUu1+ZqmS9ak8=;
 b=cc6xTMwvOKdt1bHu764PvZuR4gEYZvCh+pWEPbs3CQ+PgQfDsUp2vrSMz1KiEzwqE8
 1NF/MV1xj7HVPHlzO3PQ1tfBMhzHLMsnwf37rxQxK6HqNLiArhXI8r6rpB5dDq7Ab//N
 LS4spUULkSzvesbq/55ClH3g6z/yKhS3RlxJdUn4T2/OMDNvUJSos80FasyHRJUUcHRZ
 THlsFWJW6wv6qyp6DCHnFRdQHibCWhk0PHQGQDUmaWX13m/SrougAI6OGJENPAxJ6v9h
 G8PPqJ+N8QYML5SRyD6fYVDbaKu87AiT6Z+Uyth9y42jS8ZdMB1l3Nj4dtghMDJGJWVq
 X5KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QfIxXQosRFYKLlIDNyN5+DliCdAEN+OUu1+ZqmS9ak8=;
 b=rPdxpvqSaM2NlWPU4tI+txDOCL4R0QVKFK8HAuJ4axm8c+G7SU/+d/hW2iTzXuMzBm
 kZX7zls058rAfT7m8qpT1JOc/BWAfzEuEai9lJPOP2qNpnRe17t8Wm6Fy9wH+F18LHII
 xFpw/1tXpiC+C8mWPErExn+6DfNFfm33hs4ZShtMXMBAsDymsXBIsmyiO0I0rsQmehdi
 V9MT4YriUougAvwFIgWr91BJCsW3BnYYRht1GhoImxjs1ZMK9QA2A0xVXBNVECmVFjhO
 V1P9Zq5AKFChYCoKfJ0ICyN+x37oQw39p1fmlKih7G6rVKiDCkf6wKxZD0S381HDIy9Y
 NIug==
X-Gm-Message-State: AGi0PubG2ZVhWD2z4rE1o5+kgCevJnGVGn/WWGON5HfFxI8s5n0edaNB
 QZ5QIv28utGoov76SWUy0vnNYEdk/MMX5m8/7TzjWA==
X-Google-Smtp-Source: APiQypKftwF2yMXf7ZxkQn5Rqul30KXoWYbkplagB9+tbzyl9fDrvb1kMwNvLje0dLJ18CEJ2M487qrBaBh8Pf4qfyM=
X-Received: by 2002:a2e:b792:: with SMTP id n18mr3016511ljo.281.1586948479277; 
 Wed, 15 Apr 2020 04:01:19 -0700 (PDT)
MIME-Version: 1.0
References: <1586655721-22567-1-git-send-email-vincent.chen@sifive.com>
 <1586655721-22567-4-git-send-email-vincent.chen@sifive.com>
In-Reply-To: <1586655721-22567-4-git-send-email-vincent.chen@sifive.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Wed, 15 Apr 2020 16:31:07 +0530
Message-ID: <CAFA6WYMsW7KL3D_VrgVheRheNeh8g=G7W=oxOzuytq7rT6-YVw@mail.gmail.com>
Subject: Re: [Kgdb-bugreport] [PATCH v3 3/5] kgdb: enable arch to support XML
 packet support.
To: Vincent Chen <vincent.chen@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_040121_609672_C6AA96BB 
X-CRM114-Status: GOOD (  18.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kgdb-bugreport@lists.sourceforge.net,
 Daniel Thompson <daniel.thompson@linaro.org>, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org, paul.walmsley@sifive.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sun, 12 Apr 2020 at 07:12, Vincent Chen <vincent.chen@sifive.com> wrote:
>
> The XML packet could be supported by required architecture if the
> architecture defines CONFIG_ACRH_SUPPORTS_GDB_XML

nitpick, I guess you missed rename here? CONFIG_HAVE_ARCH_KGDB_QXFER_PKT?

-Sumit

> and implement its own
> arch_handle_qxfer_pkt(). Except for the arch_handle_qxfer_pkt(), the
> architecture also needs to record the feature supported by gdb stub into
> the arch_gdb_stub_feature, and these features will be reported to host gdb
> when gdb stub receives the qSupported packet.
>
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> ---
>  include/linux/kgdb.h   | 11 +++++++++++
>  kernel/debug/gdbstub.c | 13 +++++++++++++
>  lib/Kconfig.kgdb       |  5 +++++
>  3 files changed, 29 insertions(+)
>
> diff --git a/include/linux/kgdb.h b/include/linux/kgdb.h
> index b072aeb1fd78..414bef20a8f3 100644
> --- a/include/linux/kgdb.h
> +++ b/include/linux/kgdb.h
> @@ -177,6 +177,17 @@ kgdb_arch_handle_exception(int vector, int signo, int err_code,
>                            struct pt_regs *regs);
>
>  /**
> + *     kgdb_arch_handle_qxfer_pkt - Handle architecture specific GDB XML
> + *                                  packets.
> + *     @remcom_in_buffer: The buffer of the packet we have read.
> + *     @remcom_out_buffer: The buffer of %BUFMAX bytes to write a packet into.
> + */
> +
> +extern void
> +kgdb_arch_handle_qxfer_pkt(char *remcom_in_buffer,
> +                          char *remcom_out_buffer);
> +
> +/**
>   *     kgdb_call_nmi_hook - Call kgdb_nmicallback() on the current CPU
>   *     @ignored: This parameter is only here to match the prototype.
>   *
> diff --git a/kernel/debug/gdbstub.c b/kernel/debug/gdbstub.c
> index 4b280fc7dd67..a0617c883029 100644
> --- a/kernel/debug/gdbstub.c
> +++ b/kernel/debug/gdbstub.c
> @@ -792,6 +792,19 @@ static void gdb_cmd_query(struct kgdb_state *ks)
>                 }
>                 break;
>  #endif
> +#ifdef CONFIG_HAVE_ARCH_KGDB_QXFER_PKT
> +       case 'S':
> +               if (!strncmp(remcom_in_buffer, "qSupported:", 11))
> +                       strcpy(remcom_out_buffer, kgdb_arch_gdb_stub_feature);
> +               break;
> +       case 'X':
> +               if (!strncmp(remcom_in_buffer, "qXfer:", 6))
> +                       kgdb_arch_handle_qxfer_pkt(remcom_in_buffer,
> +                                                  remcom_out_buffer);
> +               break;
> +#endif
> +       default:
> +               break;
>         }
>  }
>
> diff --git a/lib/Kconfig.kgdb b/lib/Kconfig.kgdb
> index 933680b59e2d..d7f70335efaf 100644
> --- a/lib/Kconfig.kgdb
> +++ b/lib/Kconfig.kgdb
> @@ -3,6 +3,11 @@
>  config HAVE_ARCH_KGDB
>         bool
>
> +# set if architecture has the its kgdb_arch_handle_qxfer_pkt
> +# function to enable gdb stub to address XML packet sent from GDB.
> +config HAVE_ARCH_KGDB_QXFER_PKT
> +       bool
> +
>  menuconfig KGDB
>         bool "KGDB: kernel debugger"
>         depends on HAVE_ARCH_KGDB
> --
> 2.7.4
>
>
>
> _______________________________________________
> Kgdb-bugreport mailing list
> Kgdb-bugreport@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/kgdb-bugreport

