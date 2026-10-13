# gdext-ios-probe

Prova mínima (sem nada do jogo): **uma GDExtension C++ compila, empacota, exporta e liga para iOS com Godot 4.7.1?**

Usa o projeto de teste OFICIAL do `godot-cpp` (`test/`, script `generate_xcframework.sh`) em duas versões fixas por hash de commit:

| rótulo | ref | hash |
|---|---|---|
| godot-4.5-stable | tag | `e83fd0904c13356ed1d4c3d09f8bb9132bdc6b77` |
| 10.0.0-stable | tag | `507ed9d840c01a3c5b2a39af8bb4000bfac30bf5` |

Etapas (cada uma é um passo do workflow `.github/workflows/gdext-ios.yml`): compilar C++ para iOS arm64 + simulador → gerar `.xcframework` → exportar o projeto com **Godot 4.7.1** (templates oficiais, sem mono) → compilar no Xcode **sem assinar** → inspecionar o `.app` (extensão presente? símbolos ligados?).
Não prova que roda no aparelho (não há iPhone); para isso, ver o briefing do Soul Gate 2 (`Docs/10_Briefing_Codex_Decisao_Tecnica.md`).
