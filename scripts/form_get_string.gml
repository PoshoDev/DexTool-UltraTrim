/// @description form_get_string(Pokémon, form)
/// @param Pokémon
/// @param  form

var pkmn = argument0;
var form = argument1;

var field = form;

switch(form)
{
    case "ALOLAN":      form = "ALOLA";         break;
    case "GALARIAN":    form = "GALAR";         break;
    case "GIGANTAMAX":  form = "GMAX";          break;
    
    case "MEGA (X)":    form = "MEGA-X";        break;
    case "MEGA (Y)":    form = "MEGA-Y";        break;
    
    case "!":           form = "EXCLAMATION";   break;
    case "?":           form = "QUESTION";      break;
    case "SANDY CLOAK": form = "SANDY";         break;
    case "TRASH CLOAK": form = "TRASH";         break;
    case "EAST SEA":    form = "EAST";          break;
    case "SHOCK DRIVE":  form = "SHOCK";        break;
    case "BURN DRIVE":  form = "BURN";          break;
    case "CHILL DRIVE":  form = "CHILL";        break;
    case "DOUSE DRIVE":  form = "DOUSE";        break;
    case "10% FORME":   form = "10";            break;
    
    case "A":
    case "PLANT CLOAK":
    case "WEST SEA":
    case "ALTERED":
    case "LAND":
    case "RED-STRIPED":
    case "SPRING":
    case "INCARNATE":
    case "ORDINARY":
    case "ARIA":
    case "50% FORME":
    case "NORMAL":
    case "SMALL SIZE":
    case "AVERAGE SIZE":
    case "LARGE SIZE":
    case "SUPER SIZE":
    case "MIDDAY":
    case "AMPED":
    case "PHONY":
    case "ANTIQUE":
    case "HERO OF MANY BATTLES":
        form = "";
    break;
    
    case "ORIGINAL CAP":
    case "HOENN CAP":
    case "SINNOH CAP":
    case "UNOVA CAP":
    case "KALOS CAP":
    case "ALOLA CAP":
    case "PARTNER CAP":
    case "LOW KEY":
        form = string_replace(form, " ", "-");
    break;
    
    case "FEMALE":
    case "MALE":
        if (form="MALE" || !form_get_gender_major(pkmn))
            form = "";
    break;
}

switch(pkmn)
{
    case "NIDORAN♀":    pkmn = "NIDORAN-F"; break;
    case "NIDORAN♂":    pkmn = "NIDORAN-M"; break;
    case "FARFETCH'D":  pkmn = "FARFETCHD"; break;
    case "MR. MIME":    pkmn = "MR-MIME";   break;
    case "MIME JR.":    pkmn = "MIME-JR";   break;
    case "SIRFETCH'D":  pkmn = "SIRFETCHD"; break;
    case "MR. RIME":    pkmn = "MR-RIME";   break;
    
    case "TYPE NULL":
    case "TAPU KOKO":
    case "TAPU LELE":
    case "TAPU BULU":
    case "TAPU FINI":
        pkmn = string_replace(pkmn, " ", "-");
    break;
    
    case "VIVILLON":
        form = string_replace(form, "MEADOW", "");
        form = string_replace(form, "POKÉ", "POKE");
        form = string_replace(form, " PATTERN", "");
        form = string_replace(form, " ", "-");
    break;
    
    case "FLABÉBÉ":
    case "FLOETTE":
    case "FLORGES":
        pkmn = string_replace(pkmn, "FLABÉBÉ", "FLABEBE");
        form = string_replace(form, "RED", "");
        form = string_replace(form, " FLOWER", "");
    break;
    
    case "ORICORIO":
        form = string_replace(form, "BAILE", "");
        form = string_replace(form, " STYLE", "");
        form = string_replace(form, "PA'U", "PAU");
    break;
    
    case "MINIOR":
        form = string_replace(form, " CORE", "");
    break;
    
    case "NECROZMA":
        form = string_replace(form, " MANE", "");
        form = string_replace(form, " WINGS", "");
    break;
    
    case "MAGEARNA":
        form = string_replace(form, " COLOR", "");
    break;
    
    case "ZACIAN":
        form = string_replace(form, " SWORD", "");
    break;
    
    case "ZAMAZENTA":
        form = string_replace(form, " SHIELD", "");
    break;
    
    case "ALCREMIE":
        repeat(3)
            form = string_replace(form, " ", "-");
    break;
    
    case "HOOPA":
        if (form = "CONFINED")
            form = "";
    break;
}


if (form != "")
    return string_insert("-"+form, pkmn, string_length(pkmn)+1);
else
    return pkmn;

