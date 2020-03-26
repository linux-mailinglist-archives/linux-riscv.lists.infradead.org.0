Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18AD2194465
	for <lists+linux-riscv@lfdr.de>; Thu, 26 Mar 2020 17:37:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Z52Q+C+NI5sRvzCwNZXwgTHsc/eFf849vvv2BFT3moo=; b=mUTlNEQGQSNMIV
	aqtJZjB4Pd4c0usewdMiUttXdtS8cePDKQ5QOiYQH0CS7tJ/OGEMOpc8d8pS4Bz2xCNqasGvtfJSp
	EuBHre4PElrJdzi00KThrt37lrKZBoIt133HueVYu729g/UnWFXU25ySfaIu9ZZOakxwns9QjCpGo
	uUGvHqYnko61d0VAhP2lbkP6IeLWSaprgGf21TRdDDVVjL8mrQB/6zwY6qLAOhIka2AOtKkpa0toS
	12odZUOMMh2PssS+6n/FPxoYNJ8/AAd0q5R1RFgXUtd06oH58VBfeFLT7zWf0EzqWXLpoQljUon1H
	JqMGnvO+XRzydAonVp+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHVVv-0003sV-Aj; Thu, 26 Mar 2020 16:37:51 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVVp-0003r0-Tv
 for linux-riscv@lists.infradead.org; Thu, 26 Mar 2020 16:37:47 +0000
Received: by mail-pl1-x644.google.com with SMTP id s23so2326982plq.13
 for <linux-riscv@lists.infradead.org>; Thu, 26 Mar 2020 09:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=Z52Q+C+NI5sRvzCwNZXwgTHsc/eFf849vvv2BFT3moo=;
 b=DqAELuZErWTZ9hBELLMJ53oDN2Sud960uYRXs/thckf6EyZUJQdCpntPZ6YiACA6UE
 Z+zCiJTaK/dRm8nt5AoEc7YoZ5imYsqSlKYoSpqCPMovTb0u1k15+TbbzLhdajQ8qzhW
 OWqkLfZiJbn/ZbhDQGa5fg8J4mkBd2U6uIPDZ0o2huMMiFXD5eJAnGIuqz3DGKfFExWi
 JzaoAb3syFAjg4Ltucnzc4IBecoILolIB6T2fW9YHLlPPSjYSY/SHZEd8WQAaJUSfB2u
 FOwPTq3FOp2ZK8SjreYNkEhj3iqF/scAGPPJugkbCXYt5q/kwcrWUOwH68ZYKAIUdpse
 qc+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=Z52Q+C+NI5sRvzCwNZXwgTHsc/eFf849vvv2BFT3moo=;
 b=TmVXntpUShJDtvr2dusDgmP0qSp6nwx7q/3pA/7YjH9Ccp3lnTBeaMw65t4CN4fAjJ
 7Yjz3tx6FB552LxFSZgpEDDzbTaX+hdkdJxAOkcHhm7fB7cbClTdqKybXsZ+1Y8O05vf
 Nfvr0andfmoJsfI+Cfm5rpduy8yjml0j9k+S2Rd65b4LddESgmr9iSM3aQSg0saZUFCZ
 TrqssBuECmFSj99VH8RXTXC3KFC4jn9WAVr9boRfWbgiHTimfohfZ4v0UXYNWWKfTMVQ
 TsKnurDDW9/d+bOyBmY0NFuuj8HcABJ5g+mPwOK7XTSNHLtJ+FF0Da3E0D6tb3BBxnaP
 ABOQ==
X-Gm-Message-State: ANhLgQ2IBH+YshED8Y3HyFjhU7HxEhdVNvuc1YNzMy5e09QIyvcBeKpV
 konTHQAn1xrZkXyhM5tE/cWkXg==
X-Google-Smtp-Source: ADFU+vtpKTz44UaLjK5rWW1p85dRlUFtlNTouBjZDGVUSoB5dNYxtvMdL9b/q3M0sgc1U6XZSte2wQ==
X-Received: by 2002:a17:902:6b48:: with SMTP id
 g8mr8800403plt.149.1585240665030; 
 Thu, 26 Mar 2020 09:37:45 -0700 (PDT)
Received: from localhost (c-67-161-15-180.hsd1.ca.comcast.net. [67.161.15.180])
 by smtp.gmail.com with ESMTPSA id t60sm2053163pjb.9.2020.03.26.09.37.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 09:37:43 -0700 (PDT)
Date: Thu, 26 Mar 2020 09:37:43 -0700 (PDT)
X-Google-Original-Date: Thu, 26 Mar 2020 09:37:16 PDT (-0700)
Subject: Re: [PATCH v7 08/13] pwm: sifive: Use 64-bit division macros for
 period and duty cycle
In-Reply-To: <4212f82b8711b2b33f0e71142526d5a7575564e9.1583782035.git.gurus@codeaurora.org>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: gurus@codeaurora.org
Message-ID: <mhng-29ba8348-64c8-4113-ac65-1e81c0a1da70@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_093745_959546_8CA2209C 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: gurus@codeaurora.org, uwe@kleine-koenig.org, linux-pwm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Atish Patra <Atish.Patra@wdc.com>,
 yash.shah@sifive.com, thierry.reding@gmail.com,
 Paul Walmsley <paul.walmsley@sifive.com>, subbaram@codeaurora.org,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 09 Mar 2020 12:35:11 PDT (-0700), gurus@codeaurora.org wrote:
> Because period and duty cycle are defined in the PWM framework structs
> as ints with units of nanoseconds, the maximum time duration that can be
> set is limited to ~2.147 seconds. Redefining them as u64 values will
> enable larger time durations to be set.
>
> As a first step, prepare drivers to handle the switch to u64 period and
> duty_cycle by replacing division operations involving pwm period and duty cycle
> with their 64-bit equivalents as appropriate. The actual switch to u64 period
> and duty_cycle follows as a separate patch.
>
> Where the dividend is 64-bit but the divisor is 32-bit, use *_ULL
> macros:
> - DIV_ROUND_UP_ULL
> - DIV_ROUND_CLOSEST_ULL
> - div_u64
>
> Where the divisor is 64-bit (dividend may be 32-bit or 64-bit), use
> DIV64_* macros:
> - DIV64_U64_ROUND_CLOSEST
> - div64_u64
>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: linux-riscv@lists.infradead.org
> Cc: Yash Shah <yash.shah@sifive.com>
> Cc: Atish Patra <atish.patra@wdc.com>
>
> Signed-off-by: Guru Das Srinagesh <gurus@codeaurora.org>
> ---
>  drivers/pwm/pwm-sifive.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
> index cc63f9b..62de0bb 100644
> --- a/drivers/pwm/pwm-sifive.c
> +++ b/drivers/pwm/pwm-sifive.c
> @@ -181,7 +181,7 @@ static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *pwm,
>  	 * consecutively
>  	 */
>  	num = (u64)duty_cycle * (1U << PWM_SIFIVE_CMPWIDTH);
> -	frac = DIV_ROUND_CLOSEST_ULL(num, state->period);
> +	frac = DIV64_U64_ROUND_CLOSEST(num, state->period);
>  	/* The hardware cannot generate a 100% duty cycle */
>  	frac = min(frac, (1U << PWM_SIFIVE_CMPWIDTH) - 1);

Acked-by: Palmer Dabbelt <palmerdabbelt@google.com>

