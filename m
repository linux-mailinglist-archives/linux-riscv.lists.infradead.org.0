Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D5E19D48F
	for <lists+linux-riscv@lfdr.de>; Fri,  3 Apr 2020 12:04:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k1BfTzLG9BZEhuBWzr/Ifd9fEiBfI2PJHmMsiQ63iBc=; b=UDQ74nRAaBHYIbeYLWE5+nEKt
	x3HDBFPL3UcaOF2oc60O1nDwB3s/fUI2GulwzqpvW5M+hIBH0S4UKLBekvxfAoTgj6jufGKI2ZL9G
	RLrEwaVSJi2gTLoGba788Eh5M6qXSqy4sbM27xSuKY4qCLL6KhbKknv7l65UxkYDGE+F5+fvfON1Y
	yFBS7rldIRzSFVDtwSsZbD80I4TFG3kh4CrGRelI52Q7Thif8mw1jQ2mgcbTC0v10tTkp21qUQUFq
	UP0fD1Ph8S+YUaE78DFMWqGZKYwTO6Riv/CWomgXnXVKMf3UqN3473pw6ZuD+Bp9uvT80Pua6XsbQ
	2GBkbZ63A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKJBC-0001dL-KI; Fri, 03 Apr 2020 10:04:02 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKJB7-0001bA-Tc
 for linux-riscv@lists.infradead.org; Fri, 03 Apr 2020 10:04:00 +0000
Received: by mail-wm1-x344.google.com with SMTP id d202so7058652wmd.1
 for <linux-riscv@lists.infradead.org>; Fri, 03 Apr 2020 03:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=k1BfTzLG9BZEhuBWzr/Ifd9fEiBfI2PJHmMsiQ63iBc=;
 b=K8xx12nLC+ENHZKLpugZ0HKjwh4KsjoylTPDEYJVWx2s5pkVXhW+qDr2ZEObxMC/6Y
 /jewgo2GTpGQOAXxh09wIMRBO/Mw6e82C9IP3Gs/2mzMUqAUm7qYkb2zgWVDy/MGwQRA
 gbUP7D1EuoDQlat86sJvTWyetiMTq+if8vX/jhd4a811eUTEKjk+9zke3teg08uG/az9
 haJBvE8FUy9bYJyFI4ZqqTfqN9wB1/QV+cD1j9upK8QhfI+wT6pF8DnNmyGZzt9nnOYF
 1K8kE3vPakOpM08RVJZ/TfgfLbdq6Aad0D8qBqJQIhU9o24rzKuMZ+5yEQHx4l96WmUW
 lqAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=k1BfTzLG9BZEhuBWzr/Ifd9fEiBfI2PJHmMsiQ63iBc=;
 b=QbKBsOAps2p+zwAq1YFsRSd/AveTYPsvwOIjsh8mgVasAcSOHRTt2sF2yIlWk9F/Nu
 SERFdbv9/dVCwpVSen4KB1UeKP3AweFcJVob+d3kBA4KApV8FzYl4Y1MPGL/B1NA6ZcJ
 fmD1KnpiBW9MCpmyaLCdMNgyL631yv6gifblNNKOTVLGnCLT1cWzwqvFGMjl6ViwsEMD
 sgyu5MqY0j1OWgGrF8Fpw7lQuiyki4CxU/27UKLcTh223q2kKAj16RAq/pTCtHV1oYxq
 d71XFMwD8Pz8L6GB4IDjsFVm4bWT9/x+P8zjZFZZaxZr7ZYbde03k/x68sHkTG+XlMTv
 R3sg==
X-Gm-Message-State: AGi0PuaUeLN5EQTlHsHK5AlwmFydrgd21nvXjTgAplTzWho+Nk9q04Fh
 k4M28EI2eVvlR7mgjeZVWa7gOg==
X-Google-Smtp-Source: APiQypJ4ACNraeEoEe/+ew+Aoc+4aXqNhIiAGky7riI+uZI6LzliyENQuc/5SC9KbR4I1hwYwrDCgQ==
X-Received: by 2002:a1c:a145:: with SMTP id k66mr7735195wme.26.1585908235959; 
 Fri, 03 Apr 2020 03:03:55 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id y20sm2096347wmi.31.2020.04.03.03.03.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 03:03:55 -0700 (PDT)
Date: Fri, 3 Apr 2020 11:03:53 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Vincent Chen <vincent.chen@sifive.com>
Subject: Re: [PATCH v2 3/5] kgdb: enable arch to support XML packet support.
Message-ID: <20200403100353.szkaovdjajjwtqvq@holly.lan>
References: <1585668191-16287-1-git-send-email-vincent.chen@sifive.com>
 <1585668191-16287-4-git-send-email-vincent.chen@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1585668191-16287-4-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_030358_492068_7A510688 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kgdb-bugreport@lists.sourceforge.net, jason.wessel@windriver.com,
 dianders@chromium.org, palmer@dabbelt.com, paul.walmsley@sifive.com,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 11:23:09PM +0800, Vincent Chen wrote:
> The XML packet could be supported by required architecture if the
> architecture defines CONFIG_ACRH_SUPPORTS_GDB_XML and implement its own
> arch_handle_qxfer_pkt(). Except for the arch_handle_qxfer_pkt(), the
> architecture also needs to record the feature supported by gdb stub into
> the arch_gdb_stub_feature, and these features will be reported to host gdb
> when gdb stub receives the qSupported packet.
> 
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> ---
>  include/linux/kgdb.h   |  9 +++++++++
>  kernel/debug/gdbstub.c | 13 +++++++++++++
>  lib/Kconfig.kgdb       |  5 +++++
>  3 files changed, 27 insertions(+)
> 
> diff --git a/include/linux/kgdb.h b/include/linux/kgdb.h
> index b072aeb1fd78..ee9109d2f056 100644
> --- a/include/linux/kgdb.h
> +++ b/include/linux/kgdb.h
> @@ -177,6 +177,15 @@ kgdb_arch_handle_exception(int vector, int signo, int err_code,
>  			   struct pt_regs *regs);
>  
>  /**
> + *	arch_handle_qxfer_pkt - Handle architecture specific GDB XML packets.
> + *	@remcom_in_buffer: The buffer of the packet we have read.
> + *	@remcom_out_buffer: The buffer of %BUFMAX bytes to write a packet into.
> + */
> +
> +extern void
> +arch_handle_qxfer_pkt(char *remcom_in_buffer, char *remcom_out_buffer);

This should be prefixed kgdb_ like the other arch functions.


> +
> +/**
>   *	kgdb_call_nmi_hook - Call kgdb_nmicallback() on the current CPU
>   *	@ignored: This parameter is only here to match the prototype.
>   *
> diff --git a/kernel/debug/gdbstub.c b/kernel/debug/gdbstub.c
> index 4b280fc7dd67..d6b1b630a7e7 100644
> --- a/kernel/debug/gdbstub.c
> +++ b/kernel/debug/gdbstub.c
> @@ -792,6 +792,19 @@ static void gdb_cmd_query(struct kgdb_state *ks)
>  		}
>  		break;
>  #endif
> +#ifdef CONFIG_ACRH_SUPPORTS_GDB_XML

Typo (and perhaps insufficient testing ;-) ).

Additional the naming of the CONFIG option looks wrong because it
describes why you added it, not what it actually does. Something
like CONFIG_HAVE_ARCH_KGDB_QXFER_PKT is more descriptive.


> +	case 'S':
> +		if (!strncmp(remcom_in_buffer, "qSupported:", 11))
> +			strcpy(remcom_out_buffer, arch_gdb_stub_feature);

Has this been declared anywhere? I cannot find it.

This might also benefit from a kgdb_ prefix.


> +		break;
> +	case 'X':
> +		if (!strncmp(remcom_in_buffer, "qXfer:", 6))
> +			arch_handle_qxfer_pkt(remcom_in_buffer,
> +					      remcom_out_buffer);
> +		break;
> +#endif
> +	default:
> +		break;
>  	}
>  }
>  
> diff --git a/lib/Kconfig.kgdb b/lib/Kconfig.kgdb
> index 933680b59e2d..5b586a3bba90 100644
> --- a/lib/Kconfig.kgdb
> +++ b/lib/Kconfig.kgdb
> @@ -3,6 +3,11 @@
>  config HAVE_ARCH_KGDB
>  	bool
>  
> +# set if architecture implemented the arch_handle_qxfer_pkt function
> +# to enable gdb stub to address XML packet sent from GDB.
> +config ARCH_SUPPORTS_GDB_XML
> +	bool
> +
>  menuconfig KGDB
>  	bool "KGDB: kernel debugger"
>  	depends on HAVE_ARCH_KGDB
> -- 
> 2.7.4
> 

